# Generated by Django 5.0.6 on 2024-07-08 12:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Reservation', '0007_alter_client_nif'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reservations',
            name='mode_paiement',
        ),
    ]
