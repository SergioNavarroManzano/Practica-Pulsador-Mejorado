import 'package:flutter/material.dart';



//Abajo mejor las clases importadas propias
//import 'home_page.dart';
import 'contador_page.dart';


class MyApp extends StatelessWidget{
  //hay que sobreescribir y quedarnos con este
  @override
  Widget build(context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Center(
        //child: HomePage(),) 
        child: ContadorPage(),)

      
    );

  }

}