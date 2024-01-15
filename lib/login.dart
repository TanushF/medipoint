import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key, required this.title});
  final String title;

  @override
  State<LogIn> createState() => _Login();
}

class _Login extends State<LogIn> {
  String email = '';
  String password = '';

  Future<void> checkCredentials() async {
    /*here check in the backend if email and password matches

      if (response == success){
        Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SchedulePage(email: email)),

      else{
        return)("Invalid Password. Try Again")
      }
    );
        
      }
  */
  }
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

                    //Check to see if credentials match database
                  },
                ),
              ]),
        ));
  }
}
