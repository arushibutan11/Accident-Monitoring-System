# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-11 03:35
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0096_auto_20170711_0329'),
    ]

    operations = [
        migrations.AlterField(
            model_name='victim_person',
            name='VEH_INFO',
            field=models.CharField(blank=True, max_length=5, verbose_name='Vehicle Info'),
        ),
    ]