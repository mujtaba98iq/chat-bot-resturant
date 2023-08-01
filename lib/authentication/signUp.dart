import 'package:flutter/material.dart';
import 'package:new_mu/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromARGB(255, 209, 197, 197)),
        ),
        backgroundColor: const Color.fromARGB(255, 179, 167, 167),
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
              cursorColor: const Color.fromARGB(255, 121, 118, 115),
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 179, 167, 167), fontSize: 30),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 179, 167, 167),
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
              cursorColor: const Color.fromARGB(255, 179, 167, 167),
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 179, 167, 167), fontSize: 30),
                  prefixIcon: const Icon(
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
                    color: const Color.fromARGB(255, 255, 255, 254)),
                child: InkWell(
                  onTap: () async {
                    try {
                      var user = await auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      selectedScreen(context, 9);
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Center(
                    child: Text(
                      "Login",
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
