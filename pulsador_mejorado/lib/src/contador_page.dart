import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadoPageState();
  }


}

//con _ se vuelve privado
class _ContadoPageState extends State <ContadorPage>{

  final _estiloTexto  = new TextStyle(fontSize: 20.0);
  int _conteo=0;

  @override
  Widget build(BuildContext context) {
    //scafold es el padre de todo el arbol de la aplicacion(Toda la pantalla)
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
        //para centrar en android
        centerTitle: true,
        elevation: 0.0,
        
      ),
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Text('Número de clicks:',style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto,),
          ]
        ),
        //solo puede haber un child
        
      ),
      floatingActionButton: _crearBotones()
      
    );
  }


  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset, ),
        Expanded(child:SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer,),
        SizedBox(width:20.0),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar,),

      ],
    );
    
    
    
    
  }

  void _agregar(){
    
    setState(() {
      _conteo++;
    });
  }

  void _sustraer(){
    setState(() {
      _conteo--;
    });
  }

  void _reset(){
    setState(() {
      _conteo=0;
    });
  }

  
}

