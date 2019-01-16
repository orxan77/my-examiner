import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/ui/company_details_intro_animation.dart';

class CompanyDetailsPage extends StatelessWidget {
  final Company company;
  final CompanyDetailsIntroAnimation animation;

  CompanyDetailsPage(
      {@required this.company, @required AnimationController controller})
      : animation = new CompanyDetailsIntroAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Opacity(
          opacity: animation.backgroundOpacity.value,
          child: new Image.asset(company.backgroundPhoto, fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
