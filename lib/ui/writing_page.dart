import 'package:flutter/material.dart';

class WritingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text('Go Back'),
      )
    );
  }
}