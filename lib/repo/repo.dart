import 'package:my_examiner/model/company.dart';
import 'package:my_examiner/model/company_service.dart';
import 'package:my_examiner/model/candidate.dart';

class RepoData {
  static final Company myExaminer = new Company(
      name: "My Examiner",
      about:
          "We are always here to help if you are stuck in Writing or Speaking. Get your papers checked in less than 48 hours!",
      location: "Baku, Azerbaijan",
      backgroundPhoto: "assets/background.jpg",
      logo: "assets/logo.jpg",
      services: <CompanyService>[
        new CompanyService(
            thumbnail: "assets/writing.jpg", title: "Task 1 and 2 under the name of Academic Writing for IELTS", url: "https://www.google.com"),
        new CompanyService(
            thumbnail: "assets/speaking.jpg", title: "Speaking", url: "https://www.google.com")
      ]);

  static final Candidate candidate = new Candidate(
      name: "Orkhan", surname: "Bayramli", profilePicture: "assets/logo.jpg");
}
