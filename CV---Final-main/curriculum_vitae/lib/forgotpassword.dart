import 'package:flutter/material.dart';
import 'package:cv/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/second': (context) => const SecondRoute(),
      '/forgot': (context) => const ForgotRoute(),
    },
  )); //MaterialApp
}

class ForgotRoute extends StatelessWidget {
  const ForgotRoute({key}) : super(key: key);
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
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Enter your registered email",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 250, 250),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 250, 249, 249)),
                            top: BorderSide(
                                color: Color.fromARGB(255, 253, 253, 253)),
                            right: BorderSide(
                                color: Color.fromARGB(255, 253, 253, 253)),
                            left: BorderSide(
                                color: Color.fromARGB(255, 252, 251, 251)))),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ForgotRoute()));
                      },
                      color: Color.fromARGB(255, 136, 99, 130),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 249, 249)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 100)),
            TextButton(
              child: Text(
                "Go back to Login",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
