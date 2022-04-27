import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/4_Homepage.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';

class HistoryPage extends StatefulWidget {
  Null get title => null;

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('History'),
      ),
      // AKHIR APPBAR

      // BODY
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
          // child: SingleChildScrollView(
            child: ListView(
              children: [
                // AWAL SECTION BOOKING
                Container(
                  child: Column(
                    children: [
                      // AWAL TAG BOOKING
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Booking',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.blueGrey.shade900),
                        ),
                      ),
                      // AKHIR TAG BOOKING

                      // AWAL CARD BOOKING
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Column(
                          children: [
                            // LAYOUT ATAS CARD BOOKING
                            Container(
                              // width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.vertical(
                                    top: Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage('assets/4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 15),
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Villa ABC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            // LAYOUT BAWAH CARD BOOKING
                            Container(
                              // width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.vertical(
                                    bottom: Radius.circular(10)),
                                color: Colors.blue.shade800,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                alignment: Alignment.topRight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Check In : 29 Februari 2022, 17:00 WIB',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      'Check out : 30 Februari 2022, 07:00 WIB',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //AKHIR CARD BOOKING
                    ],
                  ),
                ),
                // AKHIR SECTION BOOKING

                // AWAL SECTION BOOKING SELESAI
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      // AWAL TAG BOOKING SELESAI
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Selesai',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.blueGrey.shade900),
                        ),
                      ),
                      // AKHIR TAG BOOKING SELESAI

                      
                      // AWAL CARD BOOKING SELESAI
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              // LAYOUT ATAS CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Villa ABC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              // LAYOUT BAWAH CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          bottom: Radius.circular(10)),
                                  color: Colors.blue.shade800,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check In : 29 Februari 2022, 17:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        'Check out : 30 Februari 2022, 07:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //AKHIR CARD BOOKING SELESAI
                      
                      // AWAL CARD BOOKING SELESAI
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              // LAYOUT ATAS CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Villa ABC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              // LAYOUT BAWAH CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          bottom: Radius.circular(10)),
                                  color: Colors.blue.shade800,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check In : 29 Februari 2022, 17:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        'Check out : 30 Februari 2022, 07:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //AKHIR CARD BOOKING SELESAI
                      
                      // AWAL CARD BOOKING SELESAI
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              // LAYOUT ATAS CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Villa ABC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              // LAYOUT BAWAH CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          bottom: Radius.circular(10)),
                                  color: Colors.blue.shade800,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check In : 29 Februari 2022, 17:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        'Check out : 30 Februari 2022, 07:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //AKHIR CARD BOOKING SELESAI
                      
                      // AWAL CARD BOOKING SELESAI
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              // LAYOUT ATAS CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Villa ABC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              // LAYOUT BAWAH CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          bottom: Radius.circular(10)),
                                  color: Colors.blue.shade800,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check In : 29 Februari 2022, 17:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        'Check out : 30 Februari 2022, 07:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //AKHIR CARD BOOKING SELESAI
                      
                      // AWAL CARD BOOKING SELESAI
                      InkWell(
                        onTap: () {
                          // LANJUT KE PAGE DETAIL BOOKING
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              // LAYOUT ATAS CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    'Villa ABC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              // LAYOUT BAWAH CARD BOOKING SELESAI
                              Container(
                                // width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.vertical(
                                          bottom: Radius.circular(10)),
                                  color: Colors.blue.shade800,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Check In : 29 Februari 2022, 17:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        'Check out : 30 Februari 2022, 07:00 WIB',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //AKHIR CARD BOOKING SELESAI
                      
                    ],
                  ),
                ),
                // AKHIR SECTION BOOKING SELESAI
              ],
            ),
          ),
        // ),
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
                      color: Colors.white,
                    ),
                    Text(
                      "History",
                      style: TextStyle(color: Colors.white),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Accountpage();
                  }));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
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
