# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-27 09:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0059_auto_20170627_0922'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='ACC_PHOTO',
            field=models.FileField(blank=True, default='', upload_to='documents/'),
        ),
        migrations.AlterField(
            model_name='details',
            name='FIR_PHOTO',
            field=models.FileField(blank=True, default='', upload_to='documents/'),
        ),
    ]
