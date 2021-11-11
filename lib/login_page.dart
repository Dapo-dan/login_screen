import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String tag = 'Login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.redAccent,
        radius: 48.0,
        child: Image.asset('images/MaxGriss'),
      ),
    );

    final email = TextFormField(
     keyboardType: TextInputType.emailAddress,
        autofocus: false,
      initialValue: 'odapo138@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final loginButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 5.0,
            child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: () {},
              color: Colors.lightBlueAccent,
              child: const Text('Log in', style: TextStyle(color: Colors.white),),
        ),
       ),
    );

    final forgotLabel = TextButton(
        onPressed: (){},
        child: const Text ('Forgot password', style: TextStyle(color: Colors.black54),)
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget> [
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 8.0,),
            forgotLabel
          ],
        ),
      ),
    );
  }
}
