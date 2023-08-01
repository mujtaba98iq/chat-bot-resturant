import 'package:flutter/material.dart';
import 'package:new_mu/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromARGB(255, 218, 215, 215)),
        ),
        backgroundColor: Color.fromARGB(255, 179, 167, 167),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              cursorColor: Color.fromARGB(255, 179, 167, 167),
              decoration: InputDecoration(
                  hintText: "Your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 179, 167, 167), fontSize: 30),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 179, 167, 167)
                  ),
                  hintMaxLines: 2),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              cursorColor: Color.fromARGB(255, 179, 167, 167),
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 179, 167, 167), fontSize: 30),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 179, 167, 167),
                  ),
                  hintMaxLines: 2),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
                height: 80,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: InkWell(
                  onTap: () async {
                    try {
                      var user = await auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        selectedScreen(context, 9);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,color:Color.fromARGB(255, 179, 167, 167)
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
