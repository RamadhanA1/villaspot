import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/4_Homepage.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';

class Accountpage extends StatefulWidget {
  Null get title => null;
  
  @override
  _AccountpageState createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage>
    with SingleTickerProviderStateMixin {
  
  // // Memilih tanggal
  final format = DateFormat("dd-MM-yyyy");
  // DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(1970);
  final lastDate = DateTime.now();
  // Memilih tanggal

  // FORM KEY
  final _formKey = GlobalKey<FormState>();

  String _namaLengkap = 'Ringgo Ricard';
  String _pilihTanggal = '05-12-2001';
  String _userName = 'ringgoR';
  String _email = 'ringgo_rrq@gmail.com';
  String _telepon = '089875686542';
  // FORM KEY

  // // FUNGSI UNTUK SIGN UP
  // void _trySubmitForm() {
  //   final bool? isValid = _formKey.currentState?.validate();
  //   if (isValid == true) {
  //     debugPrint('Everything looks good!');
  //     debugPrint(_namaLengkap);
  //     debugPrint(_pilihTanggal);
  //     debugPrint(_userName);
  //     debugPrint(_email);
  //     debugPrint(_telepon);

  //     // ScaffoldMessenger.of(context).showSnackBar(
  //     //   const SnackBar(content: Text('Pembuatan Akun Berhasil')),
  //     // );

  //     // Navigator.push(
  //     //     context, MaterialPageRoute(builder: (context) => LoginPage()));

  //     /* 
  //     Continute proccessing the provided information with your own logic 
  //     such us sending HTTP requests, savaing to SQLite database, etc.
  //     */
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('Account'),
      ),
      // AKHIR APPBAR

      // BODY
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // PROFILE PICTURE
              Container(
                width: 120.0,
                height: 120.0,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    // ==> TARUH SOURCE GAMBAR DISINI
                    'assets/profile.jpg',
                    // TARUH SOURCE GAMBAR DISINI <==
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // AKHIR PROFILE PICTURE
              // CONTAINER FORM NAMA
              Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Nama',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )),
                    Container(
                      // width: 260,
                      height: 60,

                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: TextFormField(
                        initialValue: '$_namaLengkap',
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              // AKHIR FORM NAMA

              // CONTAINER FORM EMAIL
              Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )),
                    Container(
                      // width: 260,
                      height: 60,
                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: TextFormField(
                        initialValue: '$_email',
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              // AKHIR FORM EMAIL

              // CONTAINER FORM EMAIL
              Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )),
                    Container(
                      // width: 260,
                      height: 60,
                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: TextFormField(
                        initialValue: '$_telepon',
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              // AKHIR FORM PHONE NUMBER

              // CONTAINER FORM BIRTHDAY
              Container(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Birthday',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )),
                    Container(
                      // width: 260,
                      height: 60,
                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: TextFormField(
                        initialValue: '$_pilihTanggal',
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              // AKHIR FORM BIRTHDAY

              //Awal LOGOUT Button//
              Container(
                width: 120,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return WelcomePage();
                    }));
                  },
                  child: Text(
                    'Log Out',
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
              //Akhir LOGOUT Button//

              // CODING <HR>
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(),
              ),
              // AKHIR CODING <HR>

              // ABOUT
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: Text(
                        'Kritik, Saran, Masukan :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      // width: 260,
                      // height: 60,
                      padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                      child: TextFormField(
                        // // initialValue: '12/05/2001',
                        // enabled: false,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                width: 120,
                padding: EdgeInsets.only(bottom: 1),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return WelcomePage();
                    }));
                  },
                  child: Text(
                    'Kirim',
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'Contact Us:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      child: Text(
                        'Telp : 021-123-123-12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: Text(
                        'E-Mail : Jaja.Kamaludin@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // AKHIR BODY

      // BOTTOM NAVIOGATION
      bottomNavigationBar: new Material(
        color: Colors.blue[400],
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    )
                  ],
                )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HistoryPage();
                  }));
                },
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history_sharp,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    Text(
                      "History",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    )
                  ],
                )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChatPage();
                  }));
                },
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat_sharp,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    )
                  ],
                )),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  //     return Accountpage();
                  //   }));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // AKHIR BOTTOM NAVGATION
    );
  }
}
