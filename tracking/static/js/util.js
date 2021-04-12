
function Data(){
    var diaDaSemana = new Array("Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado")
    var mesNome = new Array("Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","NOv","Dez")
 
    now = new Date()
    dt =  now.toLocaleString() + " - " + diaDaSemana[now.getDay()]
    document.getElementById('hoje').innerHTML = dt
}