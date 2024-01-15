import 'package:flutter/material.dart';
import 'newaccount.dart';
import 'login.dart';
import 'schedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medipoint App',
      home: HomePage(),
      
    );
  }
}

Future<void> createNewAccount(String email, String password) async {
  // here we need to have the backend set up a new account with the new email and password
}

Future<void> login(String email, String password) async {
  //here we need to check if the email matches the password
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LogIn(title: 'your login title')));

                // make a script here that goes onto the login part
              },
              child: Text('Log In'),
            ),
            ElevatedButton(
              onPressed: () {
                // make a script there that goes to the crete accoutn part
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const NewAccount(title: 'Make New Account')),
                );
              },
              child: Text('Create New Account'),
            ),
            //TEMPORARY - just for testing the schedule widget
            ElevatedButton(
              onPressed: () {
                // make a script there that goes to the crete accoutn part
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SchedulePage(email: 'email')),
                );
              },
              child: Text('Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
