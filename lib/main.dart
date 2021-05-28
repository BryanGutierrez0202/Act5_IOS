
import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Especialidades CBTIS 128'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget appbar[]
          ), //fin appbar
          body: Container(
            child: ListView(
               children: <Widget>[
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/dI6lSygdJVJ34.jpg','CBTIS 128'),//x item
              SizedBox(height:5.0,),
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/lenguaje-de-programaci%C3%B3n.jpg','Programacion'),//x item
              SizedBox(height:5.0,),
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/carrera-de-gericultura-por-que-roosevelt.png','Gericultura'),//x item
              SizedBox(height:5.0,),
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/administracion-e1546820999114.jpg','Administracion'),//x item
              SizedBox(height:5.0,),
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/LABORATORISTA-QU%C3%8DMICO-1024x585.jpeg', 'Laboratorista Quimico'),//x item
              SizedBox(height:5.0,),
              _items('https://raw.githubusercontent.com/ashleybalbuenaperez/Mis_Imagenes/main/descarga.jpg','Refrigeracion'),//x item
              SizedBox(height:5.0,),
            ]
            ), //fin de listview
          ), //fin de container
        ) //fin de scaffold
        ); //fin de materialapp
  } //fin de widget en mitarjetaapp

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.blue[200],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue[50],
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Ashley Balbuena Perez', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de clase mitarjetaapp