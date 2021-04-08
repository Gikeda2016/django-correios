from django.http import HttpResponse , HttpResponseRedirect, Http404
from django.shortcuts import get_object_or_404, render
from django.urls import reverse

from django.template import loader

from .models import Compras, Rastreios
from datetime import datetime

from .mod_util import agora, hoje, strdate, convfdate, convfdata, convfdatastr

# Create your views here.

def index(request):
    compras_list = Compras.objects.order_by('id')
    template = loader.get_template('tracking/index.html')
    context = {
        'compras_list': compras_list,
        }
    return render(request, 'tracking/index.html', context)

#     space = f'&nbsp'*3
#     title = f'<br><h2 style="margin-left:1.5em; color: Brown"># Status # de rastreios dos Correios  # {space} {agora()}</h2><hr>'
#     output = title + '<h3>' 
#     for lin in compras_list:
#         output += f'<p style="margin-left:3em; color: blue">({lin.id}):  {lin.nome} #\
# {lin.produto} # {lin.codigocp} # {lin.datast} {lin.hora}#{space}{lin.local}#{space}{lin.statuscp}</p>'
#         # output += '-'*160
#     output += '</h3><hr>'

#     return HttpResponse(output)

    # return HttpResponse("Hello, World!!! <br> Cheguei no Tracking Correios....")


def detail(request, compras_id):
    compra = get_object_or_404(Compras, pk = compras_id )
    return render(request, 'tracking/detail.html', {'compra': compra})

    # rastreio_list = Rastreios.objects.filter(idprod=compras_id).order_by('idrst')
    # template = loader.get_template('tracking/detail.html')
    # return render(request, 'tracking/detail.html', {'rastreio_list': rastreio_list})
    
    # return HttpResponse(f"<h2>Você está procurando o idprod = {compras_id}</h2><hr>")

def rastreio(request):
    space = f'&nbsp'*3
    linhas = Rastreios.objects.order_by('idprod')
    title = f'<br><h2 style="margin-left:1.5em; color: Brown"># Status de rastreios dos Correios  # {space} {agora()}</h2><hr>'
    output = title + '<h3>'  

    id_prod = 0
    for lin in linhas:
        if lin.idprod != id_prod:
            output += f'<br><p style="margin-left:3em; color: Black">-- {lin.idprod} --  {lin.nome} #\
{lin.produto} # {lin.codigo} #</p> <hr>'               
            id_prod = lin.idprod
        output += f'<p style="margin-left:3em; color: blue">{convfdatastr(lin.data)} {lin.hora} -- {lin.local}#{space}{lin.mens}</p>'

    output += '</h3><hr>'

    return HttpResponse(output)
