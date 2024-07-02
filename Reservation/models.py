from django.contrib.auth.models import User
from django.db import models

# Create your models here.


class Client(models.Model):
    utilisateur = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    nom = models.CharField(max_length=25)
    prenom = models.CharField(max_length=25)
    phone_number = models.CharField(max_length=9)
    address = models.CharField(max_length=255)
    ville = models.CharField(max_length=100)
    nif = models.CharField(max_length=10)



    def __str__(self):
        return self.nom


class Reservations(models.Model):
    client = models.ForeignKey(Client, on_delete=models.CASCADE)
    date_reservation = models.DateTimeField(auto_now_add=True)
    date_depart = models.DateTimeField()
    date_arrivee = models.DateTimeField()
    lieu_depart = models.CharField(max_length=100)
    lieu_arrivee = models.CharField(max_length=100)
    nombre_sieges = models.PositiveIntegerField()
    numero_bus = models.CharField(max_length=20)
    STATUT_CHOICES = [
        ('CONFIRMED', 'Confirmée'),
        ('PENDING', 'En attente'),
        ('CANCELLED', 'Annulée'),
    ]
    statut_reservation = models.CharField(max_length=10, choices=STATUT_CHOICES, default='PENDING')
    montant_total = models.DecimalField(max_digits=10, decimal_places=2)
    mode_paiement = models.CharField(max_length=50)

    def __str__(self):
        return f"Réservation {self.id} par {self.client.nom} pour le bus {self.numero_bus}"