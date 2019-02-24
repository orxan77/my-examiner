import 'package:flutter/material.dart';
import 'ui/company/company_details_animator.dart';
import 'package:my_examiner/ui/profile/profile_det_animator.dart';
import 'package:my_examiner/ui/writing/writing_det_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => new CompanyDetailsAnimator(),
        '/profile':(context) => new ProfileDetailsAnimator(),
        '/writing':(context) => new WritingDetailsPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
