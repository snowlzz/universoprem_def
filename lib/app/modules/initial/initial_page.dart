import 'package:flutter_modular/flutter_modular.dart';
import 'package:universop/app/modules/initial/initial_store.dart';
import 'package:flutter/material.dart';
// import 'package:universop/app/modules/login/login_page.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}

class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 255, 193, 143),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(children: [
                Image.asset('images/logo/LogoMov.gif'),
                const Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 101, 187, 88)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Já tem uma conta? Entre!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/register");
                    },
                    child: const Text(
                      "Primeira vez no Universo Prematuro?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
