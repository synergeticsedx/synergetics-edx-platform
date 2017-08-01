# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course_overviews', '0010_auto_20160329_2317'),
        ('shoppingcart', '0003_auto_20151217_0958'),
    ]

    operations = [
        migrations.AddField(
            model_name='coupon',
            name='course_overview',
            field=models.ForeignKey(default=None, to='course_overviews.CourseOverview'),
        ),
    ]
