import 'package:universop/app/modules/home/home_page.dart';
import 'package:universop/app/modules/home/home_store.dart';
import 'package:universop/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/modules/register/register_Page.dart';

import '../initial/initial_Page.dart';
import '../register/register_Page.dart';
import '../register/register_store.dart';
import 'login_Page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => HomeStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => const HomePage()),
  ];
}
