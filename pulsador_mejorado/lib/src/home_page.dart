
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

@override
class HomePage extends StatelessWidget{

  final estiloTexto  = new TextStyle(fontSize: 20.0);
  final conteo=0;

  @override
  Widget build(BuildContext context) {
    //scafold es el padre de todo el arbol de la aplicacion(Toda la pantalla)
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        //para centrar en android
        centerTitle: true,
        elevation: 0.0,
        
      ),
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Text('Número de clicks:',style: estiloTexto),
            Text('$conteo', style: estiloTexto,),
          ]
        ),
        //solo puede haber un child
        
      ),
      floatingActionButton: FloatingActionButton(
        //si no quieres funcion poner null. Siempre funcion anonima
        child: Icon(Icons.add),
        onPressed:(){
            
        },
      ),
      
    );
  }
}