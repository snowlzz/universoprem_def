class UserModel {
  String? _name;
  String? _email;
  String? _pass;

  UserModel();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {"nome": name, "email": email};
    return map;
  }

  String get name => _name!;
  String get email => _email!;
  String get pass => _pass!;

  set email(String value) {
    _email = value;
  }

  set name(String value) {
    _name = value;
  }

  set pass(String value) {
    _pass = value;
  }
}
