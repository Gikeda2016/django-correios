from django.contrib import admin

from .models import Compras, Rastreios, Pagamentos

# Register your models here.

admin.site.register(Compras)
admin.site.register(Rastreios)
admin.site.register(Pagamentos)
