# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage_content', '0003_statisticalcounter'),
    ]

    operations = [
        migrations.RenameField(
            model_name='statisticalcounter',
            old_name='enabled',
            new_name='certified_users',
        ),
        migrations.RemoveField(
            model_name='statisticalcounter',
            name='count',
        ),
        migrations.RemoveField(
            model_name='statisticalcounter',
            name='created',
        ),
        migrations.RemoveField(
            model_name='statisticalcounter',
            name='modified',
        ),
        migrations.RemoveField(
            model_name='statisticalcounter',
            name='title',
        ),
        migrations.AddField(
            model_name='statisticalcounter',
            name='number_of_courses',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='statisticalcounter',
            name='number_of_instructors',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='statisticalcounter',
            name='number_of_paths',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='statisticalcounter',
            name='students_registered',
            field=models.BooleanField(default=True),
        ),
    ]
