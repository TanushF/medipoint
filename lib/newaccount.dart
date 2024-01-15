import 'package:flutter/material.dart';
import 'databasehelper.dart';
import 'patient.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key, required this.title});
  final String title;

  @override
  State<NewAccount> createState() => _NewAccount();
}

class _NewAccount extends State<NewAccount> {
  late DatabaseHelper dbHelper;
  void initState() {
    super.initState();
    this.dbHelper = DatabaseHelper();
    this.dbHelper.initDB().whenComplete(() async {
      setState(() {});
    });
  }

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                    // Patient newPatient = Patient(
                    //     name: 'sample patient',
                    //     email: email,
                    //     password: password);
                    // dbHelper.retrievePatients().then(
                    //       (value) => value.forEach((e) => print(e.toMap())),
                    //     );
                    dbHelper.insertPatient(Patient(
                        name: ' ', email: 'email', password: 'password'));

                    //check to see if credentials match database
                  },
                ),
              ]),
        ));
  }
}
