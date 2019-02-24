import 'package:flutter/material.dart';

class BasicNgramTab extends StatefulWidget {
  @override
  _BasicNgramTabState createState() => _BasicNgramTabState();
}

class _BasicNgramTabState extends State<BasicNgramTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text('N-gram length',
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
        new Container(
          width: 300.0,
          height: 50.0,
          child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                  margin: const EdgeInsets.all(4.0),
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1.0),
                      borderRadius: new BorderRadius.circular(2.0)),
                  child: new Center(
                    child: new Container(
                      child: new Text(
                        '${index + 1}',
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                );
              }),
        ),
        new Row(
          children: <Widget>[
            Checkbox(
              activeColor: Colors.blue,
              value: _value1,
              onChanged: _value1Changed,
            ),
            new Text('Include nonwords'),
          ],
        ),
        new Row(
          children: <Widget>[
            Checkbox(
              activeColor: Colors.blue,
              value: _value2,
              onChanged: _value2Changed,
            ),
            new Text('A = a'),
          ],
        ),
        new RaisedButton(
          onPressed: (){},
          color: Colors.red,
          textColor: Colors.white,
          child: new Text('GO'),
        )
      ],
    );
  }

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);
}
