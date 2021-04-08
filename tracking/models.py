# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Compras(models.Model):
    id = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=55)
    produto = models.CharField(max_length=50)
    datacp = models.DateField(blank=True, null=True)
    codigocp = models.CharField(max_length=18, blank=True, null=True)
    statuscp = models.CharField(max_length=50, blank=True, null=True)
    datast = models.DateField(blank=True, null=True)
    hora = models.TimeField(blank=True, null=True)
    local = models.CharField(max_length=40, blank=True, null=True)
    finalizado = models.IntegerField(blank=True, null=True)
    comentario = models.CharField(max_length=100, blank=True, null=True)
    site = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'compras'

    def __str__(self):
        """[Retorna status da compras]
        """
#         mensag = f'({self.id:2}): {self.nome:7} #{self.produto:25} # {self.codigocp:15}\
# # {self.datast} {self.hora} # -->> {self.local} {self.statuscp}'
        mensag = f'({self.id:2}): {self.nome:7} #{self.produto:25} # {self.codigocp:15}'
        return mensag


class Pagamentos(models.Model):
    idpg = models.AutoField(primary_key=True)
    idcp = models.ForeignKey(Compras, models.DO_NOTHING,
                             db_column='idcp', blank=True, null=True)
    datapg = models.DateField()
    valor = models.FloatField()
    parcelas = models.IntegerField(blank=True, null=True)
    valorparc = models.FloatField(blank=True, null=True)
    statuspg = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pagamentos'


class Rastreios(models.Model):
    idrst = models.AutoField(primary_key=True)
    idprod = models.ForeignKey(Compras, models.DO_NOTHING, db_column='idprod')
    nome = models.CharField(max_length=50, blank=True, null=True)
    produto = models.CharField(max_length=50, blank=True, null=True)
    codigo = models.CharField(max_length=15, blank=True, null=True)
    data = models.CharField(max_length=12, blank=True, null=True)
    hora = models.CharField(max_length=5, blank=True, null=True)
    local = models.CharField(max_length=20, blank=True, null=True)
    mens = models.CharField(max_length=150, blank=True, null=True)
    finalizado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rastreios'


    def __str__(self):
        """ Retorna registros de rastreios"""
        mensag = f'({self.idprod}) {self.data} {self.hora} # {self.local} -->> {self.mens}'

        return mensag
