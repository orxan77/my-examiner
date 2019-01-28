import 'package:flutter/material.dart';

class SpeakingDetailsPage extends StatefulWidget {
  @override
  _SpeakingPageState createState() => _SpeakingPageState();
}

class _SpeakingPageState extends State<SpeakingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Container(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Speak out, man!'),
            new RaisedButton(
              child: new Text('Go back'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )),
      ),
    );
  }
}
