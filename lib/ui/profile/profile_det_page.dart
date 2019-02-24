import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:my_examiner/repo/repo.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/candidate.dart';
import 'package:my_examiner/ui/profile/profile_list_entry_card.dart';

class ProfileDetailsPage extends StatelessWidget {
  final Candidate candidate;

  ProfileDetailsPage({@required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createAnimation(context),
    );
  }

  Stack _createAnimation(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image.asset(
          'assets/profile_background.jpg',
          fit: BoxFit.cover,
        ),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
                sigmaX: 3.0,
                sigmaY: 3.0),
            child: new Container(
              color: Colors.black.withOpacity(0.35),
              child: _createContent(context),
            )),
      ],
    );
  }

  Widget _createContent(BuildContext context) {
    return new CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.transparent,
          title: new Text('my profile',
              style: new TextStyle(fontWeight: FontWeight.w600)),
        ),
        new SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index == 0) {
              return new Column(
                children: <Widget>[
                  _createHeroProfilePicture(context),
                  _createNameAndSurname()
                ],
              );
            } else {
              return new Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 8.0),
                child: new ProfileListEntryCard(index-1),
              );
            }
          }, childCount: 6),
        )
      ],
    );
  }

  Widget _createNameAndSurname() {
    return new Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
        child: new Text(
          '${RepoData.candidate.name} ${RepoData.candidate.surname}',
          style: new TextStyle(
              color: Colors.white.withOpacity(0.9), fontSize: 24.0, fontWeight: FontWeight.bold),
        ));
  }

  Widget _createHeroProfilePicture(BuildContext context) {
    return new InkWell(
        child: new SizedBox(
          width: 150.0,
          height: 150.0,
          child: new Hero(
              tag: 'tag_profile_photo',
              child: new CircleAvatar(
                backgroundImage: AssetImage(RepoData.candidate.profilePicture),
              )),
        ),
        onTap: () {
          Navigator.pop(context, '/');
        });
  }
}
