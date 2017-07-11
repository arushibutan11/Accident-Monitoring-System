# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-11 04:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0097_auto_20170711_0335'),
    ]

    operations = [
        migrations.AlterField(
            model_name='victim_person',
            name='VEH_INFO',
            field=models.CharField(blank=True, choices=[('AMBULANCE', 'AMBULANCE'), ('ANIMAL', 'ANIMAL'), ('BULLOCK CARTS', 'BULLOCK CARTS'), ('BUS BLUE LINE', 'BUS BLUE LINE'), ('BUS DTC', 'BUS DTC'), ('BUS MINI/RTV', 'BUS MINI/RTV'), ('BUS OTHER', 'BUS OTHER'), ('BUS OTHER STATE', 'BUS OTHER STATE'), ('BUS SCHOOL', 'BUS SCHOOL'), ('BUS UNDER DTC', 'BUS UNDER DTC'), ('CALL CENTER CAB', 'CALL CENTER CAB'), ('CAR PVT', 'CAR PVT'), ('CLUSTER BUS', 'CLUSTER BUS'), ('CRANE', 'CRANE'), ('CYCLE RICKSHOW', 'CYCLE RICKSHOW'), ('CYCLIST', 'CYCLIST'), ('DELIVERY VAN', 'DELIVERY VAN'), ('E RICKSHAW', 'E RICKSHAW'), ('ELECTRIC BIKE', 'ELECTRIC BIKE'), ('GRAMIN SEWA', 'GRAMIN SEWA'), ('HAND CARTS', 'HAND CARTS'), ('HTV/GOODS', 'HTV/GOODS'), ('MATADOR', 'MATADOR'), ('MILITARY VEH.', 'MILITARY VEH.'), ('POLICE VEHICLE', 'POLICE VEHICLE'), ('SCOOTRIST/MC', 'SCOOTRIST/MC'), ('STEEM ROLLER', 'STEEM ROLLER'), ('TANKER', 'TANKER'), ('TAXI', 'TAXI'), ('TEMPO', 'TEMPO'), ('TONGA/REHRA', 'TONGA/REHRA'), ('TRACTOR', 'TRACTOR'), ('TRAILER/CONTANR', 'TRAILER/CONTANR'), ('TSR', 'TSR'), ('UN-KNOWN VEH.', 'UN-KNOWN VEH.')], default='', max_length=5, verbose_name='Vehicle Info'),
        ),
    ]
