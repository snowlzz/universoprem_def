import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/modules/register/register_store.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = 'RegisterPage'}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final RegisterStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 193, 143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 80),
                child: Image.asset("images/logo/LogoMov.gif")),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [
                  TextField(
                    controller: store.controllerName,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
