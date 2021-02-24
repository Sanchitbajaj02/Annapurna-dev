import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget textField({@required String hintText, @required IconData icon}) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                textField(hintText: "Username", icon: Icons.person_outline),
                SizedBox(
                  height: 30,
                ),
                textField(hintText: "Password", icon: Icons.lock)
              ],
            ),
            Container(
              width: 200,
              height: 60,
              child: RaisedButton(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New user?", style: TextStyle(color: Colors.grey)),
                Text("Register", style: TextStyle(color: Colors.green)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
