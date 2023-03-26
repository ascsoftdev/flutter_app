import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String uname = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
          Image.asset("assets/images/login_page.png", fit: BoxFit.cover),
          const SizedBox(height: 20),
          Text("Welcome $uname",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) => {uname = value, setState(() {})},
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, MyRoutes.homePage);
          //     },
          //     style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
          //     child: const Text("Login"))
          InkWell(
            onTap: () async => {
              setState(() {
                changeButton = true;
              }),
              await Future.delayed(const Duration(seconds: 1)),
              Navigator.pushNamed(context, MyRoutes.homePage)
            },
            child: AnimatedContainer(
              width: changeButton ? 50 : 150,
              height: 50,
              duration: const Duration(seconds: 1),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 10)),
              child: changeButton
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : const Text("Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
            ),
          )
        ]));
  }
}
