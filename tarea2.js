s0.initImage("https://www.hola.com/imagenes/mascotas/20220728214490/estres-gatos-senales-alerta-dn/1-120-704/cosas-que-pueden-estresar-a-un-gato-m.jpg?im=Resize=(680)");
gradient([3,1,4])
  .modulate(src(s0).modulateScrollX(osc(10),0.5,0), 3)
  .blend(shape(8).blend(shape(3), .5), .9)
  .out(o0);