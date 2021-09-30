import 'package:menta/onboarding/pages/pages.dart';

class Welcome {
  final String title;
  final String image;

  Welcome({
    required this.title,
    required this.image,
  });
}

List<Welcome> welcomeContents = [
  Welcome(
      title: "Become Resilient",
      image: "assets/images/undraw_breaking_barriers_vnf3 1.png"),
  Welcome(
      title: "Mindfulness\n for any Moment",
      image: "assets/images/undraw_mindfulness_scgo 1.png"),
  Welcome(
      title: "Create\n  your own mental space",
      image: "assets/images/123 1.png"),
  Welcome(
      title: "Engage\n yourself in self-care ",
      image: "assets/images/undraw_yoga_248n 1.png")
];

List<SignUpPage> signUpContents = [SignUpPage()];
