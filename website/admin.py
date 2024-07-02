from django.contrib import admin

from website.models import Publications


# Register your models here.

@admin.register(Publications)
class Publication(admin.ModelAdmin):
    list_display = ("title", "date_publication",)
    list_editable = ("title", )
    list_display_links = ("date_publication", )
    search_fields = ("title",)
    list_filter = ("date_publication",)
    list_per_page =25
