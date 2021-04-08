
''' módulo de métodos gerais '''
from colorama import init
init()
# import pytest
from datetime import datetime, date, timedelta
from time import sleep

default_ =  '\33[m'  ## cor padrão
underlin_ = '\33[4m'  ## cor padrão, sublinhado
bold_ = '\33[1m'  ## cor padrão, bold
green_ = '\33[0;32m' ## letra verde
red_ = '\33[0;31m' ##  letra vermelha
yellow_ = '\33[0;33m' ##  letra amarela
blue_ = '\33[0;34m' ##  letra amarela
inversion_ ='\33[7;37;40m' ## padrão reverso -  fundo branco, letra preta
title_ = '\33[1;33m' ## padrão reverso -  fundo branco, letra preta



def agora():  ### reton na dia, hora e dia da semana
    ''' devolve data, hora e dia semana  '''

    semana = ('Segunda-feira', 'Terça-feira', 'Quarta-feira',
              'Quinta-feira', 'Sexta-feira', 'Sábado', 'Domingo'   
            )
            
    dia = datetime.now()
    return dia.strftime('%d/%b/%y %H:%M:%S') + " - " + str(semana[dia.weekday()])

def hoje():
    dia = datetime.now()
    return dia.strftime('%y/%m/%d')

def strdate(str_date): ## data = '02/02/2021'
    ''' recebe string '02/07/1962' e converte para datetime.date(1962, 7, 3) '''
    if '/' in str_date:
      date = datetime.strptime(str_date, '%d/%m/%Y').date()
    elif '-' in str_date:
        date = datetime.strptime(str_date, '%d-%m-%Y').date()
    return date  

def convfdate(data):
    ''' formato 17/01/2020 -> 2020/01/17 tipo string '''
    return data[6:10]+'/' + data[3:5] + '/' + data[0:2]

def convfdatestr(data):
    ''' formato 17/01/2020 -> 2020/01/17 tipo string '''
    return data[6:10]+'/' + data[3:5] + '/' + data[0:2]

def convfdatastr(data):
    ''' -> formato 2020/01/17 17/01/2020  tipo string '''   
    return data[8:]+'/' + data[5:7] + '/' + data[:4]

def convfdata(data):
    ''' formato -> 2020/01/17 -> 17/01/2020  tipo date '''
    if data is not None:
        return data.strftime('%d/%m/%y')
    else:
        return ''

def typewriter(palavra, tempo = 0.1, cor = default_):
    ''' Escreve a palavra letra por letra com delay.
        palavra: imprime no comando print.
        tempo  : delay entre letras da palavra. 
        cor    : cor da palavra default_ = letra branca, fundo preto.
    '''
    print(f'{cor}', end='')
    for letra in palavra:
        print(letra, end='')
        sleep(tempo)
        if letra in ',:"=!.':
            sleep(0.5)
    print(f'{default_}')
    
def typewriterbw(palavra, tempo = 0.1):
    ''' Escreve a palavra letra por letra com delay.
        palavra: imprime no comando print.
        tempo  : delay entre letras da palavra. .
    '''
    for letra in palavra:
        print(letra, end='')
        if letra in ',:"=!.':
            sleep(0.5)
  


# data = [('17/01/2018', date(2018,1,17)),
#         ('15/10/2010', date(2010,10,15)),
#         ('31/12/2020', date(2020,12,31)),
#         ('11/01/1978', date(1978,1,11)) ]
# @pytest.mark.parametrize('entrada, esperado', data)

# def test_strdate(entrada, esperado):
#     assert strdate(entrada) == esperado

