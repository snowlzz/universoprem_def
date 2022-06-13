import 'package:universop/app/modules/initial/initial_Page.dart';
import 'package:universop/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/modules/login/login_store.dart';

import '../login/login_Page.dart';
import '../register/register_page.dart';
import '../register/register_store.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const InitialPage()),
    ChildRoute('/register', child: (_, args) => const RegisterPage()),
    ChildRoute('/login', child: (_, args) => const LoginPage())
  ];
}
