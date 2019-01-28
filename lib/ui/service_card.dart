import 'package:flutter/material.dart';
import 'package:my_examiner/model/company_service.dart';

class CompanyServiceCard extends StatelessWidget {
  final CompanyService service;

  CompanyServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      decoration: _createShadowRoundCorners(),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(32.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _createThumbnail(context),
          _createCourseInfo(),
        ],
      ),
    );
  }

  BoxDecoration _createShadowRoundCorners() {
    return new BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: new BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black26, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }

  Widget _createThumbnail(BuildContext context) {
    return new ClipRRect(
      borderRadius: new BorderRadius.circular(8.0),
      child: new Stack(
        children: <Widget>[
          new Image.asset(service.thumbnail),
          _createGoToButton(context)
        ],
      ),
    );
  }

  Widget _createCourseInfo() {
    return new Padding(
      padding: const EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      child: new Text(
        service.title,
        textAlign: TextAlign.center,
        style: new TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 20.0,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _createGoToButton(BuildContext context) {
    return new CircleAvatar(
      backgroundColor: Colors.red,
      child: new GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, service.navigationUrl);
          debugPrint("${service.navigationUrl} pressed");
        },
      ),
    );
  }
}
