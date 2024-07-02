from django.contrib import admin

from Reservation.models import Client, Reservations


# Register your models here.

@admin.register(Client)
class Client_(admin.ModelAdmin):
    list_display = ("nom","prenom", "phone_number", "address", "ville", "nif")
    list_editable = ("nom", )
    list_display_links = ("phone_number", )
    search_fields = ("nom",)
    list_filter = ("address",)
    list_per_page = 25

@admin.register(Reservations)
class Reservation(admin.ModelAdmin):
    list_display = ("date_reservation", "date_depart", "date_arrivee", "lieu_depart", "lieu_arrivee", "client")
    list_display_links = ("date_depart", )
    search_fields = ("numero_bus",)
    list_filter = ("date_reservation",)
    list_per_page = 25

