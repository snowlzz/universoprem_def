import 'package:universop/app/modules/editprofile/editprofile_Page.dart';
import 'package:universop/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditprofileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditprofileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
  ];
}
