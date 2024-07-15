# Generated by Django 5.0.6 on 2024-07-08 11:58

import datetime
import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0004_alter_publications_auteur'),
    ]

    operations = [
        migrations.AlterField(
            model_name='publications',
            name='date_publication',
            field=models.DateField(validators=[django.core.validators.MinValueValidator(datetime.date(2024, 7, 8))]),
        ),
    ]
