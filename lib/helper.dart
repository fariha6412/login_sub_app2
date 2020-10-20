import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({ this.title, this.colour, this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 40.0,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}

const  TextFieldDecoration =  InputDecoration(
    hintText: "Enter your value",
    contentPadding:EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0 ),
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        borderSide: BorderSide(color: Colors.deepPurple, width: 1.0)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        borderSide: BorderSide(color: Colors.blueAccent, width: 1.0)
    ),
    prefixIcon: Icon(
      FontAwesomeIcons.info,
      color: Colors.deepPurple,
    )
);