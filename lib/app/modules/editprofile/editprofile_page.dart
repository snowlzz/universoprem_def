import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter/material.dart';

class EditprofilePage extends StatefulWidget {
  final String title;
  const EditprofilePage({Key? key, this.title = 'EditprofilePage'}) : super(key: key);
  @override
  EditprofilePageState createState() => EditprofilePageState();
}
class EditprofilePageState extends State<EditprofilePage> {
  final EditprofileStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}