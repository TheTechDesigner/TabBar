import 'package:flutter/material.dart';

class PaidPage extends StatefulWidget {
  PaidPage({Key key}) : super(key: key);

  @override
  _PaidPageState createState() => _PaidPageState();
}

class _PaidPageState extends State<PaidPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('Paid', style: TextStyle(fontSize: 48.0),),
      ),
    );
  }
}