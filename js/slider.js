$(document).ready(function flechas(){



    if(($('#slideHM > a').size())<2)
    {
      $("#flechas").css("display","none");
    }
});
function mostrarFlechas()
{
    $('#izq').fadeIn();
    $('#der').fadeIn();
}
function ocultarFlechas()
{
    $('#izq').fadeOut();
    $('#der').fadeOut();
}
function onBefore() {
    $('#output').html("Scrolling image:<br>" + this.src);
}
function onAfter() {
    $('#output').html("Scroll complete for:<br>" + this.src)
    .append('<h3>' + this.alt + '</h3>');
}
function detener()
{ 
$('#slideHM').cycle('pause'); 
}

$('#slideHM').cycle({
    fx: 'scrollHorz',
    timeout: 7000,
    before: onBefore,
    after: onAfter,
    next: '#der',
    prev: '#izq'
});

