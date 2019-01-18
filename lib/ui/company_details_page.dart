import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/ui/company_details_intro_animation.dart';
import 'package:my_examiner/model/candidate.dart';

class CompanyDetailsPage extends StatelessWidget {
  final Candidate candidate;
  final Company company;
  final CompanyDetailsIntroAnimation animation;

  CompanyDetailsPage(
      {@required this.candidate,
      @required this.company,
      @required AnimationController controller})
      : animation = new CompanyDetailsIntroAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new AnimatedBuilder(
          animation: animation.controller, builder: _createAnimation),
    );
  }

  Widget _createAnimation(BuildContext context, Widget child) {
    return new Stack(fit: StackFit.expand, children: <Widget>[
      new Opacity(
          opacity: animation.backgroundOpacity.value,
          child: new Image.asset(
            company.backgroundPhoto,
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
    ]);
  }

  Widget _createContent() {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_createLogoAvatar()],
      ),
    );
  }

  Widget _createLogoAvatar() {
    return new Transform(
        transform: new Matrix4.diagonal3Values(
            animation.avatarSize.value, animation.avatarSize.value, 1.0),
        alignment: Alignment.center,
        child: new Container(
          width: double.infinity,
          height: 150.0,
          margin: const EdgeInsets.only(top: 32.0, left: 16.0),
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: <Widget>[
              new Container(
                width: 100.0,
                height: 100.0,
                child: new CircleAvatar(
                  backgroundImage: AssetImage(candidate.profilePicture),
                ),
              ),
              new Container(
                  margin: const EdgeInsets.only(left: 32.0),
                  child: new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${candidate.name} ${candidate.surname}",
                      style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0 * animation.avatarSize.value + 2.0,
                          color: Colors.white70),
                    ),
                  )),
            ],
          ),
        ));
  }
}
