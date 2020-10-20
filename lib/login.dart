import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:login_app2/helper.dart';
import 'package:login_app2/auth_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState(){
    super.initState();

    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget> [
            Container(
              height: 300,
              child: Image.asset('images/hello.png'),
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: _emailController,
              textAlign: TextAlign.center,
              decoration: TextFieldDecoration.copyWith(hintText: " Enter your Email"),
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: _passwordController,
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your password"),
            ),

            SizedBox(height: 20.0,),
            RoundedButton(
              title: "Login",
              colour: HexColor('#DC485E'),
              onPressed: () async {
                if (_emailController.text.isEmpty|| _passwordController.text.isEmpty ) {
                  print("Email and password is empty");
                  return;
                }
                try {
                  final user = await AuthHelper.signInWithEmail( _emailController.text, _passwordController.text);
                }
                catch (e) {
                  print(e);
                }
              },
            ),
            RoundedButton(
              title: "Login with Google",
              colour: HexColor('#8242E6'),
              onPressed: () async {
                try{
                  await AuthHelper.signInWithGoogle();
                }  catch (e){
                  print (e);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
