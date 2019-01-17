import 'package:meta/meta.dart';
import 'package:my_examiner/model/company_service.dart';

class Company {
  final String name;
  final String location;
  final String backgroundPhoto;
  final String about;
  final String logo;
  final List<CompanyService> services;

  Company(
      {@required this.name,
      @required this.location,
      @required this.backgroundPhoto,
      @required this.about,
      @required this.logo,
      @required this.services});
}
