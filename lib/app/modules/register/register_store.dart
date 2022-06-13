import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:universop/app/modules/register/models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;

abstract class _RegisterStoreBase with Store {
  UserModel user = UserModel();
  FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  TextEditingController controllerName = TextEditingController();
  @observable
  TextEditingController controllerEmail = TextEditingController();
  @observable
  TextEditingController controllerPass = TextEditingController();

  @action
  Future<void> register(UserModel user) async {
    auth.createUserWithEmailAndPassword(
        email: user.email!, password: user.pass!);
  }
}
