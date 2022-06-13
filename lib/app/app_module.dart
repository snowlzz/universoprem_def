
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/app_widget.dart';
import 'package:universop/app/modules/home/home_module.dart';
import 'package:universop/app/modules/home/home_page.dart';
import 'package:universop/app/modules/initial/initial_module.dart';
import 'package:universop/app/modules/login/login_page.dart' as td;

// import 'modules/home/home_module.dart';
import 'modules/editprofile/editprofile_Page.dart';
import 'modules/editprofile/editprofile_module.dart';
import 'modules/initial/initial_Page.dart';
import 'modules/login/login_Page.dart';
import 'modules/login/login_module.dart';
import 'modules/register/models/userM_store.dart';
import 'modules/register/register_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserMStore()),
    Bind.lazySingleton((i) => const InitialPage()),
    Bind.singleton((i) =>  LoginModule()),
    Bind.singleton((i) =>  HomeModule())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/editprofile', module: EditprofileModule()),
  ];

  List<ModularRoute> routers = [
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage())
  ];

  Widget get bootstrap => const AppWidget();
}
