import 'package:cv/forgotpassword.dart';
import 'package:cv/signup.dart';
import 'package:flutter/material.dart';
import 'package:cv/maincv.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/second': (context) => const SecondRoute(),
      '/fourth': (context) => newMethod(),
    },
  )); //MaterialApp
}

newMethod() => const ThirdRoute();

class SecondRoute extends StatelessWidget {
  const SecondRoute({key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/login.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 248, 247, 247),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      makeInput(
                        label: "Email",
                      ),
                      makeInput(label: "Password", obsureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 0, left: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border(
                            bottom: BorderSide(color: Colors.white),
                            top: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white),
                            left: BorderSide(color: Colors.white))),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => newMethod()));
                      },
                      color: Color.fromARGB(255, 199, 161, 189),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 254, 253, 255),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                        }),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                TextButton(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 251, 250, 252),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ForgotRoute()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  newMethod() => new ThirdRoute();
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(221, 253, 253, 253)),
      ),
      SizedBox(
        height: 4,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}
