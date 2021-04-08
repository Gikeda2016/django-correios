from django.urls import path
from .import views

apps_name = 'tracking'

urlpatterns = [
    path('', views.index, name = 'index'),
    path('<int:compras_id>/', views.detail, name='detail'),
    # path('', views.rastreio, name = 'rastreio'),
]

