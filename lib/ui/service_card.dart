import 'package:flutter/material.dart';
import 'package:my_examiner/model/company_service.dart';

class CompanyServiceCard extends StatelessWidget {
  final CompanyService service;

  CompanyServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      decoration: _createShadowRoundCorners(),
      margin: EdgeInsets.only(left: 16.0),
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: _createThumbnail(),
          ),
          Flexible(
            flex: 2,
            child: _createCourseInfo(),
          )
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

  Widget _createThumbnail() {
    return new ClipRRect(
      borderRadius: new BorderRadius.circular(8.0),
      child: new Stack(
        children: <Widget>[
          new Image.asset(service.thumbnail),
          new Positioned(
            bottom: 12.0,
            right: 12.0,
            child: _createLinkButton(),
          )
        ],
      ),
    );
  }

  Widget _createLinkButton() {
    return new Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: new IconButton(icon: new Icon(Icons.link), onPressed: () {}),
    );
  }

  Widget _createCourseInfo() {
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
      child: new Text(
        service.title,
        textAlign: TextAlign.justify,
        style: new TextStyle(color: Colors.white.withOpacity(0.8)),
      ),
    );
  }
}
