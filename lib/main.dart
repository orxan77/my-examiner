import 'package:flutter/material.dart';
import 'ui/company_details_animator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new CompanyDetailsAnimator(),
      )
    );
  }
}