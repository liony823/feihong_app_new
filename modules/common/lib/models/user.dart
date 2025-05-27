class User {
  final String uid;
  final String name;
  final String? image;
  final bool? oline;

  User({
    required this.uid,
    required this.name,
    this.image,
    this.oline,
  });
}