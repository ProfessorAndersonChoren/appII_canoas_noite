// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  String name;
  String lastName;
  String photoPath;
  String phone;
  String email;
  bool isFavorite;
  Contact({
    required this.name,
    required this.lastName,
    required this.photoPath,
    required this.phone,
    required this.email,
    required this.isFavorite,
  });
}
