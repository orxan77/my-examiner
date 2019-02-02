import 'package:flutter/material.dart';
import 'package:my_examiner/ui/profile/profile_det_page.dart';
import 'package:my_examiner/repo/repo.dart';

class ProfileDetailsAnimator extends StatefulWidget {
  @override
  _ProfileDetailsAnimatorState createState() => _ProfileDetailsAnimatorState();
}

class _ProfileDetailsAnimatorState extends State<ProfileDetailsAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new ProfileDetailsPage(
      candidate: RepoData.candidate,
      controller: _controller,
    ));
  }
}
