from django.contrib.auth.models import User
from django.db import models
from django_currentuser.db.models import CurrentUserField
from ckeditor.fields import RichTextField


# Create your models here.

class Publications(models.Model):
    title = models.CharField(max_length=200, verbose_name='Titre')
    date_publication = models.DateTimeField(auto_now=True)
    contenu =RichTextField(verbose_name='Text_Publication')
    auteur = CurrentUserField(on_update=True)
    images = models.ImageField(blank=True, upload_to='images/')

    def __str__(self):
        return f"{self.title}"
