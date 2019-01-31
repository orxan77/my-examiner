import 'package:flutter/material.dart';

class CompanyDetailsIntroAnimation {
  CompanyDetailsIntroAnimation(this.controller)
      : backgroundOpacity = new Tween(begin: 0.5, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        backgroundBlur = new Tween(begin: 0.0, end: 5.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.800, curve: Curves.ease))),
        avatarSize = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve:
                    new Interval(0.100, 0.800, curve: Curves.fastOutSlowIn))),
        nameOpacity = new Tween(begin: 0.0, end: 0.8).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.350, 0.450, curve: Curves.easeIn))),
        locationOpacity = new Tween(begin: 0.0, end: 0.7).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.350, 0.450, curve: Curves.easeIn))),
        aboutOpacity = new Tween(begin: 0.0, end: 0.8).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.450, 0.800, curve: Curves.easeIn))),
        courseScrollerXTranslation = new Tween(begin: 400.0, end: 0.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.700, 0.900, curve: Curves.easeIn))),
        courseScrollerOpacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.800, 1.000, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;
  final Animation<double> backgroundOpacity;
  final Animation<double> backgroundBlur;
  final Animation<double> avatarSize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> aboutOpacity;
  final Animation<double> courseScrollerXTranslation;
  final Animation<double> courseScrollerOpacity;
}
