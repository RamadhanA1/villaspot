import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/2_loginpage.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nama = TextEditingController();

  //Menghilangkan Typing Password
  bool _isObscure = true;
  //Menghilangkan Typing Password

  // // Memilih tanggal
  final format = DateFormat("dd-MM-yyyy");
  // DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(1970);
  final lastDate = DateTime.now();
  // Memilih tanggal

  // FORM KEY
  final _formKey = GlobalKey<FormState>();
  // FORM KEY

  // VALUE
  String _namaLengkap = '';
  String _pilihTanggal = '';
  String _userName = '';
  String _email = '';
  String _telepon = '';
  String _password = '';
  String _passwordConfirm = '';
  //VALUE

  // FUNGSI UNTUK SIGN UP
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_namaLengkap);
      debugPrint(_pilihTanggal);
      debugPrint(_userName);
      debugPrint(_email);
      debugPrint(_telepon);
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
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
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
                          controller: nama,
                          // validator
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your full name';
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
                        child: DateTimeField(
                          format: format,
                          onShowPicker: (context, _pilihTanggal) {
                            return showDatePicker(
                                context: context,
                                firstDate: firstDate,
                                initialDate: _pilihTanggal ?? DateTime.now(),
                                lastDate: lastDate);
                          },
                          validator: (_pilihTanggal) {
                            if (_pilihTanggal == null) {
                              return 'Please enter your birth date';
                            }
                            // Return null if the entered name is valid
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Tanggal Lahir',
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
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          // validator
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your phone number';
                            }
                            // Check if the entered email has the right format
                            if (value.trim().length < 10) {
                              return 'Phone number must be at least 10 digits in length';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                          onChanged: (value) => _telepon = value,
                          // validator

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(13, 10, 10, 0),
                            labelText: 'Telepon',
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

                          // users.add({
                          //   'nama': _namaLengkap,
                          //   // 'tanggallahir': _pilihTanggal,
                          //   // 'username': _userName,
                          //   // 'email': _email,
                          //   // 'no': _telepon,
                          //   // 'pasword': _password,
                          //   // 'confirm': _passwordConfirm
                          // });

                          // _namaLengkap = '';
                          // // _pilihTanggal = '';
                          // // _userName = '';
                          // // _email = '';
                          // // _telepon = '';
                          // // _password = '';
                          // // _passwordConfirm = '';

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
