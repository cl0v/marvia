import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hash_farm/points_controller.dart';
import 'package:hash_farm/repo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PointCalculator controller;
  Repo repo = Repo();

  TextEditingController tc = TextEditingController();

  @override
  void initState() {
    repo.fetchToken().then((value) => controller = PointCalculator(value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialButton(
        color: Colors.blue,
        onPressed: () {
          controller.calcPoints(tc.text);
        },
        child: Container(
          height: 60,
          child: Center(
            child: Text('Confirmar'),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        actions: [
          TextButton(
            onPressed: ()  {
              FirebaseAuth.instance.signOut();
            },
            child: Text(
              'Sair',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        'RS: 30,00',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    color: Colors.blue,
                  )),
              Flexible(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: tc,
                  ),
                ),
              )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
