import 'package:flutter/material.dart';

import '../../Theme/app_buttom_style.dart';
import '../main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
        title: const Text(
          'Login to your account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const _FormWidget(),
          const SizedBox(
            height: 30,
          ),
          Text(
              'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.',
              style: textStyle),
          SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkbutton,
            onPressed: () {},
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.blue,

            child: Text('Register'),
          ),
          const SizedBox(
            height: 30,
          ),
          Text("If you signed up but didn't get your verification email.",
              style: textStyle),
          SizedBox(
            height: 5,
          ),
          TextButton(
            style: AppButtonStyle.linkbutton,
            onPressed: () {},

            child: Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text:'admin');
  final _passwordTextController = TextEditingController(text:'admin');
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushNamed('/main_screen');
    } else {
      errorText = 'Incorrect username or password';
      // print('show error');
    }
    setState(() {});}
  

  void _resetPasspord() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Color(0xFF212529));
    final color = const Color(0xFF01B4E4);
    final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 0.0)),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      // filled: true,
      isCollapsed: true,
      fillColor: Colors.red,
      focusColor: Colors.red,
      hoverColor: Colors.red,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20),
        ],
        Text(
          "Username",
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Password",
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                ),
              ),
              child: Text('Login'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: _resetPasspord,
                style: AppButtonStyle.linkbutton,
                child: Text('Reset Password'))
          ],
        ),
      ],
    );
  }
}
