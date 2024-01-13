import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PatientUI()),
                // );
              },
              child: Text('Patient'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ProfessionalUI()),
                // );
              },
              child: Text('Professional'),
            ),
          ],
        ),
      ),
    );
  }
}

//login:

// class PatientLogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Patient Login")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           child: Column(
//             children: <Widget>[
//               TextFormField(decoration: InputDecoration(labelText: 'Username')),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Password'),
//                 obscureText: true,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle login logic
//                 },
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
