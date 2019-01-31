import 'package:flutter/material.dart';
import 'ui/company_details_animator.dart';
import 'ui/speaking_det_page.dart';
import 'ui/writing_det_page.dart';
import 'package:my_examiner/ui/profile_det_page.dart';

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
        '/writing': (context) => new WritingDetailsPage(),
        '/speaking': (context) => new SpeakingDetailsPage(),
        '/profile':(context) => new ProfileDetailsPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
