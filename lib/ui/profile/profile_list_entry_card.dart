import 'package:flutter/material.dart';
import 'package:my_examiner/repo/repo.dart';

class ProfileListEntryCard extends StatelessWidget {
  final int index;
  ProfileListEntryCard(this.index);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black26, spreadRadius: 2.0, blurRadius: 5.0)
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white.withOpacity(0.8),
      ),
      height: 70.0,
      width: double.infinity,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: new Icon(RepoData.profile.listEntries[index].icon),
          ),
          new Text(
            RepoData.profile.listEntries[index].title,
            style: new TextStyle(fontSize: 16.0),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: new Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
