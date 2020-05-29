import 'package:flutter/material.dart';

class DraftPage extends StatefulWidget {
  DraftPage({Key key}) : super(key: key);

  @override
  _DraftPageState createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('Draft', style: TextStyle(fontSize: 48.0),),
      ),
    );
  }
}