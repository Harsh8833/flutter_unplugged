import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Unplugged"),
        ),
        body: SizedBox(
          width: 100,
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ));
  }
}
