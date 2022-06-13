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
  String erro = '';
  @observable
  TextEditingController controllerName = TextEditingController();
  @observable
  TextEditingController controllerEmail = TextEditingController();
  @observable
  TextEditingController controllerPass = TextEditingController();

  @action
  Future registerUser(UserModel userModel) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
            email: userModel.email, password: userModel.pass)
        .then((firebaseUser) {
      FirebaseFirestore db = FirebaseFirestore.instance;
      db.collection("users").doc(firebaseUser.user?.uid).set(userModel.toMap());
    });
  }

  @action
  Future loginUser(UserModel userModel) async {
    FirebaseAuth auth = FirebaseAuth.instance;
  }

  @action
  Future validate() async {
    String email = controllerEmail.text;
    String pass = controllerPass.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (pass.isNotEmpty && pass.length >= 5) {
        erro = "";
        UserModel userModel = UserModel();
        userModel.email = email;
        userModel.pass = pass;

        registerUser(userModel);
      }
    }
  }
}
