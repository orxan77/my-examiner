import 'package:flutter/material.dart';

class WritingDetailsPage extends StatefulWidget {
  @override
  _WritingPageState createState() => _WritingPageState();
}

class _WritingPageState extends State<WritingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Container(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('This is Writing Page!'),
            new RaisedButton(
              child: new Text('Go back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
      ),
    );
  }
}
