import 'package:flutter/material.dart';
import 'ui/company_details_animator.dart';
import 'ui/writing_page.dart';

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
        '/writing': (context) => new WritingPage()
        },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
