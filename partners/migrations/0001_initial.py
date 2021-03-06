# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-08-03 11:45
from __future__ import unicode_literals

import ckeditor_uploader.fields
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import geoposition.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Dealers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_date', models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')),
                ('edited_date', models.DateTimeField(auto_now=True, null=True, verbose_name='Дата редактирования')),
                ('title', models.CharField(max_length=255, verbose_name='Название')),
                ('phone_number', models.CharField(blank=True, max_length=15, validators=[django.core.validators.RegexValidator(message="Телефон должен быть введен в следующем формате: '+799999999'. Разрешено до 15 символов.", regex='^\\+?1?\\d{9,15}$')], verbose_name='Телефон')),
                ('address', models.TextField(blank=True, verbose_name='Адрес')),
                ('url', models.URLField(blank=True, verbose_name='Сайт')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='E-mail')),
                ('text', ckeditor_uploader.fields.RichTextUploadingField(blank=True, verbose_name='Описание')),
                ('show', models.BooleanField(default=True, verbose_name='Показывать')),
                ('file', models.ImageField(blank=True, null=True, upload_to='partners', verbose_name='Логотип')),
                ('position', geoposition.fields.GeopositionField(blank=True, max_length=42, verbose_name='Расположение')),
                ('num', models.IntegerField(default=0, verbose_name='Порядковый номер')),
            ],
            options={
                'verbose_name': 'Диллер',
                'verbose_name_plural': 'Диллеры',
                'ordering': ['num'],
            },
        ),
        migrations.CreateModel(
            name='Regions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_date', models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')),
                ('edited_date', models.DateTimeField(auto_now=True, null=True, verbose_name='Дата редактирования')),
                ('title', models.CharField(max_length=255, verbose_name='Название')),
                ('num', models.IntegerField(default=0, verbose_name='Порядковый номер')),
            ],
            options={
                'verbose_name': 'Регион',
                'verbose_name_plural': 'Регионы',
                'ordering': ['num'],
            },
        ),
        migrations.AddField(
            model_name='dealers',
            name='region',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='partners.Regions', verbose_name='Регион'),
        ),
    ]
