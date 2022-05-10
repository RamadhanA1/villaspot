import 'package:flutter/material.dart';
import 'package:villaspot/2_loginpage.dart';
import 'package:villaspot/3_signuppage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AWAL BODY//
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Image.asset(
                //   'assets/3.jpg',
                //   fit: BoxFit.cover,
                // ),
                width: 160.0,
                height: 160.0,
                margin: EdgeInsets.only(bottom: 70),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text('Selamat Datang',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
              ),
              Container(
                width: 210.0,
                child: Center(
                  child: Text(
                    'Di VillaSpot, kami menyediakan akomodasi villa dengan harga terjangkau dan kapasitas besar',
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
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
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'Sign Up',
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
              //Akhir Button//
            ],
          ),
        ),
      ),
      //AKHIR BOTTOM BAR//
    );
  }
}
