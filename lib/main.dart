import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar App'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        color: Colors.teal,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Hello Everyone'),
            action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  //abhi kuch nhi daala..
                }),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text(
          'Press it',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
