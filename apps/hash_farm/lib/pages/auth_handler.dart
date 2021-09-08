import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hash_farm/pages/home_page.dart';
import 'package:hash_farm/user/repository.dart';

class AuthHandler extends StatefulWidget {
  const AuthHandler({Key? key}) : super(key: key);

  @override
  _AuthHandlerState createState() => _AuthHandlerState();
}

class _AuthHandlerState extends State<AuthHandler> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.data?.uid == null) return LoginPage();
        return HomePage();
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController emailController =
      TextEditingController(text: 'marcelofv12@gmail.com');

  final TextEditingController passwordController =
      TextEditingController(text: '123123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                ),
                TextFormField(
                  controller: passwordController,
                ),
                ElevatedButton(
                  onPressed: () async {
                    UserRepository()
                        .user(await AuthRepo.login(emailController.text, passwordController.text));
                  },
                  child: Text('Conectar'),
                ),

                TextButton(onPressed: () async {
                  UserRepository()
                        .create(await AuthRepo.create( emailController.text, passwordController.text));
                }, child: Text('Criar conta'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
