import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:universop/app/modules/register/models/userM_store.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;

abstract class _RegisterStoreBase with Store {
  UserMStore user = UserMStore();
  FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  String erro = '';

  @observable
  TextEditingController controllerName = TextEditingController();

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  bool loading = false;



  @action
  Future<User> registerUser({
    required String email,
    required String password,
  }) async {
    final user = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    Modular.to.pushNamed('/editprofile');
    return user.user!;
  }

  @action
  Future signIn({
    required String email,
    required String password,
  }) async {
    Future.delayed(const Duration(seconds: 3)).whenComplete(() async {
      try {
        await auth.signInWithEmailAndPassword(email: email, password: password).then((user) async {
          if (user != null) loading = false;
          Modular.to.pushNamed('/home');
        });
        
      } on FirebaseAuthException catch (error) {
        loading = false;
        switch (error.code) {
          case "invalid-email":
            erro = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            erro = "Your password is wrong.";
            break;
          case "user-not-found":
            erro = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            erro = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            erro = "Too many requests. Try again later.";
            break;
          case "operation-not-allowed":
            erro = "Signing in with Email and Password is not enabled.";
            break;
          default:
            erro = "An undefined Error happened.";
        }
      }
    });
  }

  

  String? validateName(){
    if (user.name == null || user.name.isEmpty){
      erro = "Campo obrigatório";
      return erro;
    }else if (user.name.length < 3 ){
      erro = 'Nome precisa ter mais de 3 caracteces';
      return erro;
    }
    return null;
  }

  String? validateEmail(){
    if ( user.email == null || user.email.isEmpty){
      return erro;
    } else if (!user.email.contains("@")){
      erro = "Não é um email válido";
      return erro;
    }
    return null;
  }
}
