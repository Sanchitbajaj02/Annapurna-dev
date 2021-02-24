import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  Widget button({@required String name, Color color, Color textColor}) {
    return Container(
      height: 50,
      width: 300,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/logo.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome to Annapurna",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: [
                    Text("Order food from our restaurant and"),
                    Text("Make reservation in real-time")
                  ],
                ),
                button(
                    name: "Login",
                    color: Colors.green,
                    textColor: Colors.white),
                button(
                    name: "Signup",
                    color: Colors.white,
                    textColor: Colors.green)
              ],
            )),
          )
        ],
      ),
    );
  }
}
