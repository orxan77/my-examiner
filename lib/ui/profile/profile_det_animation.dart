import 'package:flutter/material.dart';

class ProfileDetailsAnimation {
  ProfileDetailsAnimation(this.controller)
      : backgroundOpacity = new Tween(begin: 0.5, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        backgroundBlur = new Tween(begin: 0.0, end: 5.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.800, curve: Curves.ease)));

  final AnimationController controller;
  final Animation<double> backgroundOpacity;
  final Animation<double> backgroundBlur;
}
