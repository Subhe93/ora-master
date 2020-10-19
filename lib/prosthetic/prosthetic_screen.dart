import 'package:flutter/material.dart';
import 'package:ora_app/list_products/Products_list.dart';

class Prosthetic extends StatefulWidget {
  @override
  _ProstheticState createState() => _ProstheticState();
}

class _ProstheticState extends State<Prosthetic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar( context),
     body: Container(
       width: 100,
       height: 100,
       color: Colors.blue,
     ),
    );
  }
}
