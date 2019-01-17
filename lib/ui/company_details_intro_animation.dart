import 'package:flutter/material.dart';

class CompanyDetailsIntroAnimation {
  CompanyDetailsIntroAnimation(this.controller)
      : backgroundOpacity = new Tween(begin: 0.5, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 1.000, curve: Curves.easeIn))),
        backgroundBlur = new Tween(begin: 0.0, end: 5.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.800, curve: Curves.ease))),
        avatarSize = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.100, 0.400, curve: Curves.elasticInOut)));

  final AnimationController controller;
  final Animation<double> backgroundOpacity;
  final Animation<double> backgroundBlur;
  final Animation<double> avatarSize;
  // final Animation<double> nameOpacity;
  // final Animation<double> locationOpacity;
  // final Animation<double> dividerWidth;
  // final Animation<double> aboutOpacity;
  // final Animation<double> courseScrollerXTranslation;
  // final Animation<double> courseScrollerOpacity;
}
