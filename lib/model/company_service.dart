import 'package:meta/meta.dart';

class CompanyService {
  final String title;
  final String thumbnail;
  final String navigationUrl;

  CompanyService(
      {@required this.title, @required this.thumbnail, @required this.navigationUrl});
}
