import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/2_loginpage.dart';
import 'package:intl/intl.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //Menghilangkan Typing Password
  bool _isObscure = true;
  //Menghilangkan Typing Password

  // Memilih tanggal
  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(1970);
  final lastDate = DateTime.now();

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: firstDate,
        lastDate: lastDate);
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }
  // Memilih tanggal

  // FORM KEY
  final _formKey = GlobalKey<FormState>();

  String _namaLengkap = '';
  String _userName = '';
  String _email = '';
  String _emailConfirm = '';
  String _password = '';
  String _passwordConfirm = '';
  // FORM KEY

  // FUNGSI UNTUK SIGN UP
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_namaLengkap);
      debugPrint(_userName);
      debugPrint(_email);
      debugPrint(_emailConfirm);
      debugPrint(_password);
      debugPrint(_passwordConfirm);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pembuatan Akun Berhasil')),
      );

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));

      /* 
      Continute proccessing the provided information with your own logic 
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }

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
                      image: AssetImage('assets/3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 160.0,
                  height: 160.0,
                  margin: EdgeInsets.only(bottom: 30, top: 70),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('Sign Up Page',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                ),

                //Text Field//
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Return null if the entered name is valid
                            return null;
                          },
                          onChanged: (value) => _namaLengkap = value,
                          // validator

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Nama Lengkap',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          onTap: () => _openDatePicker(context),
                          // initialValue: 'Tap untuk mengubah tanggal',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            // isCollapsed: true,
                            labelText: 'Tanggal Lahir',
                            prefixText: 'Tap untuk mengubah tanggal',
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
                      // Text('$selectedDate'.split(' ')[0]),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            // Return null if the entered username is valid
                            return null;
                          },
                          onChanged: (value) => _userName = value,
                          // validator

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Username',
                            prefixText: '@',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your email address';
                          }
                          // Check if the entered email has the right format
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          // Return null if the entered email is valid
                          return null;
                        },
                        onChanged: (value) => _email = value,
                          // validator
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          if (value != _email) {
                            return 'Confirmation email does not same';
                          }

                          return null;
                        },
                        onChanged: (value) => _emailConfirm = value,
                          // validator
                          
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Konfirmasi Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 8) {
                            return 'Password must be at least 8 characters in length';
                          }
                          // Return null if the entered password is valid
                          return null;
                        },
                        onChanged: (value) => _password = value,
                          // validator

                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Password',
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
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        // height: 52,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          // validator
                          validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          if (value != _password) {
                            return 'Confimation password does not match the entered password';
                          }

                          return null;
                        },
                        onChanged: (value) => _passwordConfirm = value,
                          // validator

                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'KonfirmasiPassword',
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
                          ),
                        ),
                      ),
                      //Awal Login Button//
                      Container(
                        width: 90,
                        height: 55,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                          onPressed: _trySubmitForm,
                          // () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => LoginPage()));
                          // },
                          child: Text(
                            'Sign Up',
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
                    ],
                  ),
                ),
                //Akhir Text Field//

                //Awal Text//
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Text("Or Sign Up With"),
                  ),
                ),
                //Akhir Text//

                //Awal Alter Login//
                Container(
                  width: 320,
                  padding: EdgeInsets.only(top: 10, bottom: 30),
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
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Login',
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
