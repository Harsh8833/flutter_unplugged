import 'package:flutter/material.dart';

class DswDashBoardView extends StatefulWidget {
  const DswDashBoardView({Key? key}) : super(key: key);

  @override
  State<DswDashBoardView> createState() => _DswDashBoardViewState();
}

class _DswDashBoardViewState extends State<DswDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.black87,
                    margin: EdgeInsets.all(30),
                  ),
                  Text(
                    "Director Of Student Welfare",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ), //header file
            Container(
              height: 100,
              margin: EdgeInsets.all(30),
              color: Colors.grey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Event Name',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Description',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
