import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key, required this.title});
  final String title;

  @override
  State<NewAccount> createState() => _NewAccount();
}

class _NewAccount extends State<NewAccount> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40),
                Text("Enter your email:",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Email',
            ),
          ),
        ),
                SizedBox(height: 40),
                Text('Enter your password:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
                SizedBox(height: 30),
                ElevatedButton(
                  child: Text('Submit',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  onPressed: () {


                    //check to see if credentials match database
                  },
                ),
              ]),
        ));
  }
}
