# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course_modes', '0008_auto_20170728_0855'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coursemode',
            name='currency',
            field=models.CharField(default=b'usd', max_length=8),
        ),
    ]
