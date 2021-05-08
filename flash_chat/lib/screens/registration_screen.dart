import 'file:///C:/Users/manuel/AndroidStudioProjects/flash_chat/lib/filed/input_decoration.dart';
import 'package:flash_chat/components/round_button.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/flash_loading/loading_icon.dart' as flashLoadingIcon;

class RegistrationScreen extends StatefulWidget {
  static const String id = '/registratoin';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool isProgressIndicatorNeeded = false;
  Widget flashIcon;

  @override
  void initState() {
    super.initState();
    flashIcon = flashLoadingIcon.getIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'flash',
                child: flashIcon,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: InputFieldDecoration(
                colour: Colors.blueAccent,
                hintText: 'Enter your e-mail',
              ).getInputDecoration(),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: InputFieldDecoration(
                colour: Colors.blueAccent,
                hintText: 'Enter your password',
              ).getInputDecoration(),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundButton(
              colour: Colors.blueAccent,
              onPressed: () async {
                setState(() {
                  flashIcon = flashLoadingIcon.getIcon(glow: true);
                });
                try {
                  var user = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (user != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (e) {
                  print(e.toString());
                }
                setState(() {
                  flashIcon = flashLoadingIcon.getIcon();
                });
              },
              buttonText: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
