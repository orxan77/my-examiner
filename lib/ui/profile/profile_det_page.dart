import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:my_examiner/repo/repo.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/candidate.dart';
import 'package:my_examiner/ui/profile/profile_det_animation.dart';

class ProfileDetailsPage extends StatelessWidget {
  final ProfileDetailsAnimation animation;
  final Candidate candidate;

  ProfileDetailsPage({@required this.candidate, AnimationController controller})
      : animation = new ProfileDetailsAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createAnimation(context),
    );
  }

  Stack _createAnimation(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Opacity(
            opacity: animation.backgroundOpacity.value,
            child: new Image.asset(
              'assets/profile_background.jpg',
              fit: BoxFit.cover,
            )),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
                sigmaX: animation.backgroundBlur.value,
                sigmaY: animation.backgroundBlur.value),
            child: new Container(
              color: Colors.black.withOpacity(0.3),
              child: _createContent(),
            )),
      ],
    );
  }

  Widget _createContent() {
    return new Container();
  }

  // Widget _createHeroProfilePicture(BuildContext context) {
  //   return new InkWell(
  //       onTap: () {
  //         Navigator.pop(context, '/');
  //       },
  //       child: new SizedBox(
  //         width: 150.0,
  //         height: 150.0,
  //         child: new Hero(
  //             tag: 'tag_profile_photo',
  //             child: new CircleAvatar(
  //               backgroundImage: AssetImage(RepoData.candidate.profilePicture),
  //             )),
  //       ));
  // }
}
