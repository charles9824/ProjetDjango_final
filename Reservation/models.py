from django.contrib.auth.models import User
from django.core.validators import MinValueValidator
from django.db import models
from django_currentuser.db.models import CurrentUserField


# Create your models here.


class Client(models.Model):
    utilisateur = CurrentUserField(on_update=True)
    nom = models.CharField(max_length=25)
    prenom = models.CharField(max_length=25)
    phone_number = models.CharField(max_length=8)
    address = models.CharField(max_length=255)
    ville = models.CharField(max_length=100)
    nif = models.CharField(max_length=10, unique=True)



    def __str__(self):
        return self.nom


class Reservations(models.Model):
    client = models.ForeignKey(Client, on_delete=models.CASCADE)
    date_reservation = models.DateTimeField(auto_now_add=True)
    date_depart = models.DateTimeField()
    date_arrivee = models.DateTimeField()
    lieu_depart = models.CharField(max_length=100)
    lieu_arrivee = models.CharField(max_length=100)
    numero_bus = models.CharField(max_length=4)
    STATUT_CHOICES = [
        ('CONFIRMED', 'Confirmée'),
        ('PENDING', 'En attente'),
        ('CANCELLED', 'Annulée'),
    ]
    statut_reservation = models.CharField(max_length=10, choices=STATUT_CHOICES, default='PENDING')
    montant_total = models.DecimalField(max_digits=10, decimal_places=2, validators=[MinValueValidator(5000)])


    def __str__(self):
        return f"Réservation {self.id} par {self.client.nom} pour le bus {self.numero_bus}"