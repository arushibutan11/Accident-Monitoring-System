# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.views import generic
from django.views.generic.edit import CreateView
from django.views.generic import TemplateView
from .models import details, circles, sections, injured, killed, location, accid_type
from .forms import FirForm, InjForm, KilForm
from django.forms import ModelForm
from django import forms
from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.decorators import api_view, permission_classes
from rest_framework import generics, permissions
from rest_framework.response import Response
from django.forms.formsets import formset_factory
from django.forms.models import inlineformset_factory
from django.forms import modelformset_factory
from django.db.models import Q
import json

def create_fir2(request):    
    InjInlineFormSet = inlineformset_factory(details, injured, fields = ('PS', 'FIRNO', 'YEAR', 'INJAGE','INJSEX','INJTYPE'), widgets = {
    'PS': forms.TextInput(attrs={'class': 'iPS cloned injcloned'}),'FIRNO': forms.TextInput(attrs={'class': 'iFIRNO cloned injcloned'}), 
    'YEAR': forms.TextInput(attrs={'class': 'iYEAR cloned injcloned'}),},
    form=InjForm, extra = 1)

    KilInlineFormSet = inlineformset_factory(details, killed, fields = ('PS', 'FIRNO', 'YEAR', 'AGE','SEX','TYPE'), 
      widgets = {'PS': forms.TextInput(attrs={'class': 'iPS cloned kilcloned'}),
      'FIRNO': forms.TextInput(attrs={'class': 'iFIRNO cloned kilcloned'}), 
      'YEAR': forms.TextInput(attrs={'class': 'iYEAR cloned kilcloned'}),},
      form=KilForm, extra = 1)

    if request.method == 'POST':

      form = FirForm(request.POST)
      injform = InjInlineFormSet(request.POST)
      kilform = KilInlineFormSet(request.POST)
      if form.is_valid():
        fir = form.save()
        injform = InjInlineFormSet(request.POST, request.FILES, instance=fir, prefix = 'injured')
        kilform = KilInlineFormSet(request.POST, request.FILES, instance=fir, prefix = 'killed')
        cd = form.cleaned_data
        firid = str(cd.get('ACC_ID'))

        if form.data['ACCTYPE'] == 'F':
          if kilform.is_valid():
            kil = kilform.save()
            count_kil(firid)
            sec = form.data['SECTION']
            sec_obj = sections.objects.get(pk = sec)
            
            if ('338' in sec_obj.SECTIONDTL or '337' in sec_obj.SECTIONDTL):
              if injform.is_valid():
                inj = injform.save()
                count_inj(firid)
              #Injform is invalid and Kilform is valid
              else:
                return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})
          else:
            #If Kilform is invalid
            return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})

        elif (form.data['ACCTYPE'] == 'S'  or form.data['ACCTYPE'] == 'G'):
          if injform.is_valid():
            count_inj(firid)          
            inj = injform.save()
          else: 
            # If Injform is invalid
            return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})

        elif form.data['ACCTYPE'] == 'N':
            pass

        else:
            return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})

        return HttpResponse('done')
      else:
        #if main form is not Valid
        return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})

    #If method is not POST
    else:
        form = FirForm()
        injform = InjInlineFormSet(prefix = 'injured')
        kilform = KilInlineFormSet(prefix = 'killed')
        return render(request,'details_form.html', { 'form': form, 'forminj': injform, 'formkil':kilform})


def count_inj(firid):
    is_fir = Q(ACCID_ID = firid)
    is_male = Q(INJSEX = "F")
    is_female = Q(INJSEX = "M")
    is_minor = Q(INJAGE = "<10")
    CNTB = injured.objects.filter(is_fir & is_male & is_minor).count()
    CNTG = injured.objects.filter(is_fir & is_female & is_minor).count()
    CNTM = injured.objects.filter(is_fir & is_male & ~(is_minor)).count()
    CNTF = injured.objects.filter(is_fir & is_female & ~(is_minor)).count()
    INJURED = CNTB + CNTG + CNTM + CNTF
    acc = details.objects.get(pk = firid)
    acc.INJURED = INJURED
    acc.INJMALE = CNTM
    acc.INJFEMALE = CNTF
    acc.INJBOY = CNTB
    acc.INJGIRL = CNTG
    if (acc.VEHTYPE2_id == "PED"):
      acc.PEDESTRIAN = acc.PEDESTRIAN +  INJURED 
    acc.save()

def count_kil(firid):
    is_fir = Q(ACCID_ID = firid)
    is_male = Q(SEX = "M")
    is_female = Q(SEX = "F")
    is_minor = Q(AGE = "<10")
    CNTB = killed.objects.filter(is_fir & is_male & is_minor).count()
    CNTG = killed.objects.filter(is_fir & is_female & is_minor).count()
    CNTM = killed.objects.filter(is_fir & is_male & ~(is_minor)).count()
    CNTF = killed.objects.filter(is_fir & is_female & ~(is_minor)).count()
    KILLED = CNTB + CNTG + CNTM + CNTF
    acc = details.objects.get(pk = firid)
    acc.KILLED = KILLED
    acc.KILMALE = CNTM
    acc.KILFEMALE = CNTF
    acc.KILBOY = CNTB
    acc.KILGIRL = CNTG
    if (acc.VEHTYPE2_id == "PED"):
      acc.PEDESTRIAN = KILLED 
    acc.save() 


@permission_classes((permissions.AllowAny,))
def getcircleinfo(request):
  
    if request.method == 'POST':
      circle = request.POST.get('circle')
      info = circles.objects.get(CIRCLENAM = circle)
      return HttpResponse(json.dumps(info.as_json()), content_type="application/json")
            


@permission_classes((permissions.AllowAny,))
def getsection(request):
  
    if request.method == 'POST':
      section = request.POST.get('section')
      info = sections.objects.get(SECTIONDTL = section)
      return HttpResponse(json.dumps(info.as_json()), content_type="application/json")

@permission_classes((permissions.AllowAny,))
def getlocation(request):
  
    if request.method == 'POST':
      loc = request.POST.get('location')
      info = location.objects.get(TYPE = loc)
      return HttpResponse(json.dumps(info.as_json()), content_type="application/json")

@permission_classes((permissions.AllowAny,))
def getacctype(request):
  
    if request.method == 'POST':
      acctype = request.POST.get('accid_type')
      info = accid_type.objects.get(SNO = acctype)
      return HttpResponse(json.dumps(info.as_json()), content_type="application/json")
            
