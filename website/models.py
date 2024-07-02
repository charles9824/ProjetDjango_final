from django.contrib.auth.models import User
from django.db import models

# Create your models here.

class Publications(models.Model):
    title = models.CharField(max_length=200, verbose_name='Titre')
    date_publication = models.DateTimeField(auto_now=True)
    contenu = models.TextField( verbose_name='Text_Publication')
    auteur = models.ForeignKey(User, on_delete=models.PROTECT, default="", null=True)
    images = models.ImageField(blank=True, upload_to='images/')

    def __str__(self):
        return f"{self.title} {self.contenu}"
