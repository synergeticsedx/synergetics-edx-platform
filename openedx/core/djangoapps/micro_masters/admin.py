from django.contrib import admin
from django.contrib.admin.actions import delete_selected as django_delete_selected
from django.contrib import messages
from django.contrib.admin.utils import get_deleted_objects, model_ngettext
from django.core.exceptions import PermissionDenied
from django.db import router
from django.utils.encoding import force_text
from django.utils.translation import ugettext as _
from django.forms import SelectMultiple, Textarea
from django.db import models

from .models import (
    Subject, Language,
    Institution, Instructor,
    Program, ProgramEnrollment,
    ProgramCoupon, ProgramCertificateSignatories,
    ProgramGeneratedCertificate,
    ProgramCouponRedemption, ProgramOrder # need to remove
)
from .program_reindex import remove_program_elasticsearch


def delete_selected(modeladmin, request, queryset):

    opts = modeladmin.model._meta

    if not modeladmin.has_delete_permission(request):
        raise PermissionDenied

    using = router.db_for_write(modeladmin.model)

    # Populate deletable_objects, a data structure of all related objects that
    # will also be deleted.
    deletable_objects, model_count, perms_needed, protected = get_deleted_objects(
        queryset, opts, request.user, modeladmin.admin_site, using)

    # The user has already confirmed the deletion.
    # Do the deletion and return a None to display the change list view again.
    if request.POST.get('post'):
        if perms_needed:
            raise PermissionDenied
        n = queryset.count()
        if n:
            for obj in queryset:
                obj_display = force_text(obj)
                modeladmin.log_deletion(request, obj, obj_display)
                remove_program_elasticsearch(program_id=obj.id)
            queryset.delete()
            modeladmin.message_user(request, _("Successfully deleted %(count)d %(items)s.") % {
                "count": n, "items": model_ngettext(modeladmin.opts, n)
            }, messages.SUCCESS)
        # Return None to display the change list page again.
        return None
    else:
        return django_delete_selected(modeladmin, request, queryset)


class SubjectAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_fields = ['name']

    class Meta:
        verbose_name = "Subject"
        verbose_name_plural = "Subjects"

admin.site.register(Subject, SubjectAdmin)


class LanguageAdmin(admin.ModelAdmin):
    list_display = ['name', 'code']
    search_fields = ['name', 'code']

    class Meta:
        verbose_name = "Language"
        verbose_name_plural = "Language"

admin.site.register(Language, LanguageAdmin)


class InstitutionAdmin(admin.ModelAdmin):

    list_display = ['name', 'image_tag', 'website_url']
    search_fields = ['name', 'website_url']

    class Meta:
        verbose_name = "Institution"
        verbose_name_plural = "Institution"

admin.site.register(Institution, InstitutionAdmin)


class InstructorAdmin(admin.ModelAdmin):
    list_display = ['name', 'designation', 'get_institution', 'image_tag']
    list_filter = ['designation', 'institution__name']
    search_fields = ['name']

    def get_institution(self, obj):
        return obj.institution.name
    get_institution.admin_order_field  = 'institution'  #Allows column order sorting
    get_institution.short_description = 'institution name'  #Renames column head

    class Meta:
        verbose_name = "Instructor"
        verbose_name_plural = "Instructors"

admin.site.register(Instructor, InstructorAdmin)


class ProgramAdmin(admin.ModelAdmin):
    list_display = ['name', 'price', 'average_length', 'effort', 'image_tag']
    list_filter = ['language__name', 'subject__name', 'institution__name']
    search_fields = ['name']
    actions = [delete_selected]

    formfield_overrides = {
        models.ManyToManyField: {'widget': SelectMultiple(attrs={'size': '10'})},
        models.TextField: {'widget': Textarea(attrs={'rows': 25, 'cols': 100})},
    }

    class Meta:
        verbose_name = "Program"
        verbose_name_plural = "Programs"

    def delete_model(modeladmin, request, obj):
        remove_program_elasticsearch(program_id=obj.id)
        obj.delete()

admin.site.register(Program, ProgramAdmin)


class ProgramEnrollmentAdmin(admin.ModelAdmin):
    list_display = ['user', 'program', 'is_active']
    list_filter = ['is_active']
    search_fields = ['program__name', 'user__username']

    class Meta:
        verbose_name = "Program Enrollment"
        verbose_name_plural = "Program Enrollment"

admin.site.register(ProgramEnrollment, ProgramEnrollmentAdmin)


class ProgramCouponAdmin(admin.ModelAdmin):
    list_display = ['code', 'program', 'percentage_discount', 'is_active', 'expiration_date']
    list_filter = ['is_active', 'percentage_discount', 'program']
    search_fields = ['program__name', 'code', 'percentage_discount']

    class Meta:
        verbose_name = "Program Coupon"
        verbose_name_plural = "Program Coupons"

admin.site.register(ProgramCoupon, ProgramCouponAdmin)


class ProgramCouponRedemptionAdmin(admin.ModelAdmin):

    class Meta:
        verbose_name = "Program Coupon Redemption"
        verbose_name_plural = "Program Coupon Redemption"

admin.site.register(ProgramCouponRedemption, ProgramCouponRedemptionAdmin)


class ProgramOrderAdmin(admin.ModelAdmin):

    class Meta:
        verbose_name = "Program Order"
        verbose_name_plural = "Program Order"

admin.site.register(ProgramOrder, ProgramOrderAdmin)


class ProgramCertificateSignatoriesAdmin(admin.ModelAdmin):
    list_display = ['name', 'title', 'institution', 'program', 'image_tag']
    list_filter = ['institution__name', 'program__name']
    search_fields = ['name', 'title']

    class Meta:
        verbose_name = "Program Certificate Signatories"
        verbose_name_plural = "Program Certificate Signatories"

admin.site.register(ProgramCertificateSignatories, ProgramCertificateSignatoriesAdmin)


class ProgramGeneratedCertificateAdmin(admin.ModelAdmin):
    list_display = ['user', 'program', 'issued']
    list_filter = ['program', 'user', 'issued']

    class Meta:
        verbose_name = "Program Generated Certificate"
        verbose_name_plural = "Program Generated Certificate"

admin.site.register(ProgramGeneratedCertificate, ProgramGeneratedCertificateAdmin)
