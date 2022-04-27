import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/3_signuppage.dart';
import 'package:villaspot/4_Homepage.dart';
import 'package:villaspot/mainpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AWAL BODY//
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 160.0,
                  height: 160.0,
                  margin: EdgeInsets.only(bottom: 30, top: 30),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('Log In Page',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                ),

                //Text Field//
                Container(
                  width: 260,
                  height: 54,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: TextFormField(
                    // initialValue: 'Masukkan Username atau Email Anda',
                    decoration: InputDecoration(
                      labelText: 'Username or Email',
                      // errorText: 'Error message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      // suffixIcon: Icon(
                      //   Icons.password,
                      // ),
                    ),
                  ),
                ),
                Container(
                  width: 260,
                  height: 54,
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: TextFormField(
                    // initialValue: 'Masukkan Username atau Email Anda',
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      // errorText: 'Error message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                      // suffixIcon: Icon(
                      //   Icons.remove_red_eye,
                      // ),
                    ),
                  ),
                ),
                //Akhir Text Field//
                //Awal Login Button//
                Container(
                  width: 90,
                  height: 55,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo.shade900),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
                //Akhir Login Button//

                //Awal Text//
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Text("Or Log In With"),
                  ),
                ),
                //Akhir Text//

                //Awal Alter Login//
                Container(
                  width: 320,
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.blueGrey[900],
                            ),
                            label: Text(
                              "Google",
                              style: TextStyle(color: Colors.blueGrey[900]),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.blueGrey[900],
                            ),
                            label: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.blueGrey[900]),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Akhir Alter login//
              ],
            ),
          ),
        ),
      ),
      //AKHIR BODY//

      //AWAL BOTTOM BAR//
      bottomNavigationBar: Material(
        color: Colors.lightBlue[500],
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Awal Button//
              Container(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                  child: Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.indigo.shade800),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blueGrey[900]),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            //AKHIR BOTTOM BAR//
          ),
        ),
      ),
    );
  }
}
