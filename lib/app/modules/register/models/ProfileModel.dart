import 'package:universop/app/modules/register/models/UserModel.dart';

class ProfileModel extends UserModel {
  String? mother;
  String? birth;
  int? gage;
  bool? gender;

  ProfileModel({
    this.mother,
    this.birth,
    this.gage,
    this.gender,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "mother": mother,
      "birth": birth,
      "gage": gage,
      "gender": gender
    };
    return map;
  }
}
