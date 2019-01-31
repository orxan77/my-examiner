import 'package:flutter/material.dart';
import 'package:my_examiner/repo/repo.dart';

class ProfileDetailsPage extends StatefulWidget {
  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {
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
            new InkWell(
                onTap: () {
                  Navigator.pop(context, '/');
                },
                child: new Container(
                  width: 100.0,
                  height: 100.0,
                  child: new Hero(
                      tag: 'tag_profile_photo',
                      child: new CircleAvatar(
                        backgroundImage:
                            AssetImage(RepoData.candidate.profilePicture),
                      )),
                ))
          ],
        )),
      ),
    );
  }
}
