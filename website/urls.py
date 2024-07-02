from django.urls import path

from website.views import index, apropos, contact, reservation, readmore, developpeur

urlpatterns = [
    path('', index, name='acceuil'),
    path('apropos', apropos, name='apropos'),
    path('contact', contact, name='contact'),
    path('readmore/<id>/', readmore, name='read_more'),
    path('reservation', reservation, name='reservation'),
    path('developpeur', developpeur, name='developpeur'),
]