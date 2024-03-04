import 'package:flutter/material.dart';
import 'DSW.dart';

class login_view extends StatefulWidget {
  const login_view({Key? key}) : super(key: key);

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
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
                      MaterialPageRoute(builder: (context) => dsw_view()),
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
