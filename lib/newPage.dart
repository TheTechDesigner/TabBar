import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  NewPage({Key key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('New', style: TextStyle(fontSize: 48.0),),
      ),
    );
  }
}