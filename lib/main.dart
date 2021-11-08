import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String title = 'Mailboxes';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: loginPage(),
      
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);
  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  TextEditingController usernameController = TextEditingController();
  final passController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đăng nhập_',
        ),
      ),
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.account_circle_outlined,
                size: 120,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("SignIn",
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  Text(
                    'Speak, friend and enter',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 60),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.white),
              width: 400,
              child: TextField(
                controller: usernameController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.white),
              width: 400,
              child: TextField(
                controller: passController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              //padding: const EdgeInsets.all(20),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  if (usernameController.text == "" &&
                      passController.text == "") {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Lỗi'),
                            content: const Text(
                                'Username và Password không được rỗng.'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Tắt'))
                            ],
                          );
                        });
                  } else if (usernameController.text == "" ||
                      passController.text == "") {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Lỗi'),
                            content:
                                const Text('Chưa nhập Username hoặc Password.'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Tắt'))
                            ],
                          );
                        });
                  } else if (usernameController.text != passController.text) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const tryAgainPage(),
                        ));
                  } else if (usernameController.text == passController.text) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => splashScreen(),
                        ));
                  }
                },
                child: Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.black,
                textColor: Colors.white,
              ),
              height: 50,
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}

class tryAgainPage extends StatelessWidget {
  const tryAgainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try Again'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.unpublished_outlined,
                size: 120,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("UPS...couldn't Sign In",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Your username and password don't match.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Please, try again.",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(height: 270),
            Container(
              //padding: const EdgeInsets.all(20),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ));
                },
                child: Text(
                  'TRY AGAIN',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.black,
                textColor: Colors.white,
              ),
              height: 50,
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}

class mailPage extends StatefulWidget {
  const mailPage({Key? key}) : super(key: key);

  @override
  _mailPage createState() => _mailPage();
}

class _mailPage extends State<mailPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mailboxes'),
      ),
      body: Text('hello'),
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreen createState() => _splashScreen();
}

class _splashScreen extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => mailPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            SizedBox(
              height: 220,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
