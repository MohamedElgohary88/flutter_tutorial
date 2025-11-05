class UserModel {
  final int id;
  final String name;
  final String email;

  UserModel(this.name, this.email, {required this.id});
  
  factory UserModel.fromJson(Map<String, dynamic> json) {
    // Perform type checking and handle potential nulls to prevent runtime errors.
    final id = json['id'];
    final name = json['name'];
    final email = json['email'];

    if (id is! int || name is! String || email is! String) {
      throw const FormatException('Invalid JSON format for UserModel');
    }

    return UserModel(name, email, id: id);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}
