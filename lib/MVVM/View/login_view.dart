import 'package:flutter/material.dart';
import 'DSW/dsw_dashboard_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

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
      body: Center(
        child: Container(
          width: 300, // Adjust the width as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DswDashBoardView()),
                    );
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
