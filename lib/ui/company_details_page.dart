import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/ui/company_details_intro_animation.dart';
import 'dart:ui' as ui;

class CompanyDetailsPage extends StatelessWidget {
  final Company company;
  final CompanyDetailsIntroAnimation animation;

  CompanyDetailsPage(
      {@required this.company, @required AnimationController controller})
      : animation = new CompanyDetailsIntroAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: _createAnimation,
    );
  }

  Widget _createAnimation(BuildContext context, Widget child) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Opacity(
          opacity: animation.backgroundOpacity.value,
          child: new Image.asset(
            company.backgroundPhoto,
            fit: BoxFit.cover,
          ),
        ),
        new BackdropFilter(
          filter: ui.ImageFilter.blur(
              sigmaX: animation.backgroundBlur.value,
              sigmaY: animation.backgroundBlur.value),
          child: new Container(
            color: Colors.black.withOpacity(0.3),
            child: _createContent(),
          ),
        )
      ],
    );
  }

  Widget _createContent() {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createLogoAvatar(),
        ],
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
          height: 110.0,
          margin: const EdgeInsets.only(top: 32.0, left: 19.0),
          padding: const EdgeInsets.all(3.0),
          child: new Row(
            children: <Widget>[
              // new CircleAvatar(
              //   backgroundColor: Colors.white,
              //   child: new Image.asset(
              //     company.logo,
              //     height: 100.0,
              //     width: 100.0,
              //   ),
              // ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "My Examiner Orxan Bayramli",
                  style: new TextStyle(
                      fontSize: 20.0 * animation.avatarSize.value + 2.0,
                      color: Colors.white70),
                ),
              )
            ],
          ),
        ));
  }
}