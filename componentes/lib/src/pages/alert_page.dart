import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final estiloTexto = new TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventana de Alerta', style: estiloTexto,),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.orange,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=> _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_return_outlined, color: Colors.white,),
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          }),
   backgroundColor: Colors.black,
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context)
      {
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
          title: Text('Alerta', style: estiloTexto, textAlign: TextAlign.center,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('No mi May. Algo salió mal :(', style: estiloTexto,),
              FlutterLogo(
                size: 100.0,
                ),
            ],
          ),

          actions: <Widget>[
            FlatButton(
              child: Text('Simón', style: estiloTexto,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Nel ese', style: estiloTexto,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],

          backgroundColor: Colors.red,
          
          
        );
      }
    );
  }
}
