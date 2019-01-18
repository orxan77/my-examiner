import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/model/company_service.dart';
import 'package:my_examiner/model/candidate.dart';

class RepoData {
  static final Company myExaminer = new Company(
      name: "MyExaminer",
      about:
          "We are always here to help if you are stuck in Writing or Speaking. Get your papers checked in less than 48 hours!",
      location: "Baku, Azerbaijan",
      backgroundPhoto: "assets/background.jpg",
      logo: "assets/logo.jpg",
      services: <CompanyService>[
        new CompanyService(
            thumbnail: "assets/writing.jpg", title: "Writing", url: ""),
        new CompanyService(
            thumbnail: "assets/speaking.jpg", title: "Speaking", url: "")
      ]);

  static final Candidate candidate = new Candidate(
      name: "Orxan", surname: "Bayramli", profilePicture: "assets/logo.jpg");
}
