# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0009_auto_20170714_0517'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='site_manager',
            field=models.BooleanField(default=0),
        ),
    ]
