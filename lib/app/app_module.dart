import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/app_widget.dart';
// import 'package:universop/app/modules/home/home_page.dart';
import 'package:universop/app/modules/initial/initial_module.dart';

// import 'modules/home/home_module.dart';
import 'modules/initial/initial_Page.dart';
import 'modules/login/login_Page.dart';
import 'modules/login/login_module.dart';
import 'modules/register/register_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => const InitialPage()),
    Bind.singleton((i) => const LoginPage())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/register', module: RegisterModule()),
  ];

  Widget get bootstrap => const AppWidget();
}
