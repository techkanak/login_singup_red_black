import 'package:flutter/material.dart';
import 'package:login_signup/Login/background.dart';
import '../constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.2),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.09),
              child: Text(
                'Welcome \nBack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: appPrimaryColor,
                style: TextStyle(
                  color: appPrimaryColor,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: textfieldlabel,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: textfieledborder),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appPrimaryColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: appPrimaryColor,
                obscureText: true,
                style: TextStyle(
                  color: appPrimaryColor,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: textfieldlabel,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: textfieledborder),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appPrimaryColor),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.2),
          ],
        ),
      ),
    );
  }
}