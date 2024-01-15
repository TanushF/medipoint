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
            const Text('Enter your email:'),
            TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Color.fromARGB(255, 255, 255, 255),
              onChanged: (value) {
                email = value;
              },
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Color.fromARGB(255, 255, 255, 255),
              onChanged: (value) {
                password = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
