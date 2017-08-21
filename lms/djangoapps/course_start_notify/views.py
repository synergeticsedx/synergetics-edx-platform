from datetime import datetime, timedelta

from django.contrib.auth.models import User, AnonymousUser
from django.core.mail import send_mail
from django.conf import settings
from edxmako.shortcuts import render_to_string
from django.http import HttpResponse
from django.core.urlresolvers import reverse

from courseware.courses import get_courses


def get_email_params(course, user=None, secure=False):
    """
    Generate parameters used when parsing email templates.
    """
    protocol = 'https' if secure else 'http'
    course_key = course.id.to_deprecated_string()
    display_name = course.display_name_with_default_escaped
    stripped_site_name = settings.SITE_NAME
    course_url = u'{proto}://{site}{path}'.format(
        proto=protocol,
        site=stripped_site_name,
        path=reverse('course_root', kwargs={'course_id': course_key})
    )
    # We can't get the url to the course's About page if the marketing site is enabled.
    course_about_url = None
    if not settings.FEATURES.get('ENABLE_MKTG_SITE', False):
        course_about_url = u'{proto}://{site}{path}'.format(
            proto=protocol,
            site=stripped_site_name,
            path=reverse('about_course', kwargs={'course_id': course_key})
        )
    # Composition of email
    email_params = {
        'site_name': stripped_site_name,
        'course': course,
        'display_name': display_name,
        'course_url': course_url,
        'course_about_url': course_about_url,
        'platform_name': settings.PLATFORM_NAME
    }
    return email_params


def course_start_notification():

    COURSE_START_NOTIFY_DAY = settings.COURSE_START_NOTIFY_DAY
    user = AnonymousUser()
    from_address = settings.DEFAULT_FROM_EMAIL
    is_secure = settings.FEATURES.get('OAUTH_ENFORCE_SECURE', False)
    courses = get_courses(user)
    today = datetime.now().date()
    updated_date = today + timedelta(days=COURSE_START_NOTIFY_DAY)

    for course in courses:
        if updated_date == course.start.date():
            context = get_email_params(course, is_secure)
            users = User.objects.filter(is_active=True)
            user_emails = []
            for user_obj in users:
                user_emails += [user_obj.email]
            subject = render_to_string('course_start_notify/course_start_notification_email_subject.txt', context)
            # Email subject *must not* contain newlines
            subject = ''.join(subject.splitlines())
            message = render_to_string('course_start_notify/course_start_notification_email.txt', context)
            send_mail(subject, message, from_address, user_emails, fail_silently=False)
    return HttpResponse(True)
