class ProjectModel {
  final String img;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectModel(
      {required this.img,
      required this.title,
      required this.subTitle,
      required this.androidLink,
      required this.iosLink,
      required this.webLink});
}
