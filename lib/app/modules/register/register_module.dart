import 'package:universop/app/modules/editprofile/editprofile_store.dart';
import 'package:universop/app/modules/editprofile/editprofile_page.dart';
import 'package:universop/app/modules/register/register_Page.dart';
import 'package:universop/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => EditprofileStore)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
  ];
}
