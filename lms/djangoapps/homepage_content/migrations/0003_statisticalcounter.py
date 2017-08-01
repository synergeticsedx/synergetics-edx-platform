# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django_extensions.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('homepage_content', '0002_testimonials_is_active'),
    ]

    operations = [
        migrations.CreateModel(
            name='StatisticalCounter',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('created', django_extensions.db.fields.CreationDateTimeField(auto_now_add=True, verbose_name='created')),
                ('modified', django_extensions.db.fields.ModificationDateTimeField(auto_now=True, verbose_name='modified')),
                ('title', models.CharField(max_length=200)),
                ('count', models.IntegerField()),
                ('enabled', models.BooleanField(default=0)),
            ],
            options={
                'verbose_name': 'Statistical Counter',
                'verbose_name_plural': 'Statistical Counter',
            },
        ),
    ]
