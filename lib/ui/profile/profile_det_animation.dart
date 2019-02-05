import 'package:flutter/material.dart';

class ProfileDetailsAnimation {
  ProfileDetailsAnimation(this.controller)
      : backgroundBlur = new Tween(begin: 0.0, end: 2.4).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 1.000, curve: Curves.easeInOut)));

  final AnimationController controller;
  final Animation<double> backgroundBlur;
}
