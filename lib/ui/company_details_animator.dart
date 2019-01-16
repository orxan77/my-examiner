import 'package:flutter/material.dart';
import 'company_details_page.dart';
import 'package:my_examiner/repo/repo.dart';

class CompanyDetailsAnimator extends StatefulWidget {
  @override
  _CompanyDetailsAnimatorState createState() => _CompanyDetailsAnimatorState();
}

class _CompanyDetailsAnimatorState extends State<CompanyDetailsAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new CompanyDetailsPage(
        company: RepoData.myExaminer,
        controller: _controller,
      ),
    );
  }
}
