import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final estiloTexto = new TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventana de Avatar', style: estiloTexto,),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKa-On-S6s3pIub1Nq9uMGFIw8SPqxzbbFSg&usqp=CAU',
            
            ),
            radius: 25.0,
            backgroundColor: Colors.white
          ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JR', style: estiloTexto,),
              backgroundColor: Colors.blue
              ),
          ),
        ],
         backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_return_outlined, color: Colors.white, ),
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          }),
    backgroundColor: Colors.black,
    body: Center(
      child: FadeInImage(
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKa-On-S6s3pIub1Nq9uMGFIw8SPqxzbbFSg&usqp=CAU'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      ),
    ),
    );
  }
}
