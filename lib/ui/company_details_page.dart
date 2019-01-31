import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/ui/company_details_intro_animation.dart';
import 'package:my_examiner/model/candidate.dart';
import 'package:my_examiner/ui/service_card.dart';

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
    return new Transform(
      transform: new Matrix4.translationValues(0.0, 0.0, 0.0),
      child: new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: company.services.length + 1,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _createUpperPart(context);
          } else {
            return _createLowerListPart(index);
          }
        },
      ),
    );
  }

  Widget _createUpperPart(BuildContext context) {
    return new Column(
      children: <Widget>[
        _createLogoAvatar(context),
        _createAboutCompany(),
      ],
    );
  }

  Widget _createLowerListPart(int index) {
    var service = company.services[index - 1];
    return new CompanyServiceCard(service);
  }

  Widget _createLogoAvatar(BuildContext context) {
    return new Transform(
        transform: new Matrix4.diagonal3Values(
            animation.avatarSize.value, animation.avatarSize.value, 1.0),
        alignment: Alignment.center,
        child: new Container(
          width: double.infinity,
          height: 150.0,
          margin: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: new Container(
                    width: 100.0,
                    height: 100.0,
                    child: new Hero(
                        tag: 'tag_profile_photo',
                        child: new CircleAvatar(
                          backgroundImage: AssetImage(candidate.profilePicture),
                        )),
                  )),
              new Flexible(
                child: new Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    padding: const EdgeInsets.all(16.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                            child: new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            "${candidate.name} ${candidate.surname}",
                            style: new TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    20.0 * animation.avatarSize.value + 2.0,
                                color: Colors.white.withOpacity(0.8)),
                          ),
                        )),
                        _createGoToProfileButton(context),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }

  Widget _createGoToProfileButton(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        width: 180.0,
        height: 30.0,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(6.0),
          border: Border.all(
            color: Colors.black.withOpacity(0.15),
          ),
          color: Colors.white12,
        ),
        child: new Text(
          "Go to profile",
          style: new TextStyle(color: Colors.white.withOpacity(0.55)),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
    );
  }

  Widget _createAboutCompany() {
    return new Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(company.name,
              style: new TextStyle(
                  color: Colors.white.withOpacity(animation.nameOpacity.value),
                  fontSize: 30.0 * animation.avatarSize.value + 2.0,
                  fontWeight: FontWeight.bold)),
          new Text(company.location,
              textAlign: TextAlign.justify,
              style: new TextStyle(
                color:
                    Colors.white.withOpacity(animation.locationOpacity.value),
                fontWeight: FontWeight.w500,
              )),
          new Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            height: 1.0,
            width: double.infinity,
            color: Colors.white.withOpacity(animation.locationOpacity.value),
          ),
          new Text(company.about,
              style: new TextStyle(
                  color: Colors.white.withOpacity(animation.aboutOpacity.value),
                  fontSize: 16.0,
                  height: 1.2))
        ],
      ),
    );
  }
}
