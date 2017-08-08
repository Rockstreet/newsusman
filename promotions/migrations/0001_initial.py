# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-08-03 11:45
from __future__ import unicode_literals

import ckeditor_uploader.fields
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Promotions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, verbose_name='Заголовок акции')),
                ('text', ckeditor_uploader.fields.RichTextUploadingField(verbose_name='Полное описание')),
                ('created_date', models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')),
                ('published_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата для вывода')),
                ('start_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата начала показа')),
                ('end_date', models.DateTimeField(blank=True, default=django.utils.timezone.now, verbose_name='Дата завершения показа')),
                ('main_page', models.BooleanField(default=True, verbose_name='На главную')),
                ('file', models.ImageField(blank=True, null=True, upload_to='promotions', verbose_name='Изображение')),
            ],
            options={
                'verbose_name': 'Промо акция',
                'verbose_name_plural': 'Промо акции',
            },
        ),
    ]
