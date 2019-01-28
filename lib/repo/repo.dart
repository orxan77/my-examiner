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
            thumbnail: "assets/writing_logo.png", title: "Check your Task 1 and Task 2 essays!", navigationUrl: '/writing'),
        new CompanyService(
            thumbnail: "assets/speaking_logo.png", title: "Test your speaking skills by recording your 2 minutes long speech!", navigationUrl: '/speaking')
      ]);

  static final Candidate candidate = new Candidate(
      name: "Orkhan", surname: "Bayramli", profilePicture: "assets/logo.jpg");
}
