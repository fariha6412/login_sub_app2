import 'package:login_app2/auth_helper.dart';
import 'package:login_app2/helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor('#D7F5FA'),
        automaticallyImplyLeading: true,
        toolbarHeight: 70.0,
        centerTitle: true,
        title: Text('Gloomy Chat', style: TextStyle(color: Colors.deepPurple, fontSize: 26.0),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/fir-cls-bfb07.appspot.com/o/winni.jpg?alt=media&token=2f6edece-3e31-479f-be1f-495ab275d24a", height: 250.0,),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/fir-cls-bfb07.appspot.com/o/finland.jpg?alt=media&token=27f02694-c963-45bb-aed2-2cc61801af37", height: 190.0,),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: "Log Out",
              colour: Colors.blue,
              onPressed: () {
                AuthHelper.logOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
