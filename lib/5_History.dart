import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/4_Homepage.dart';
import 'package:villaspot/5.1_HistoryPemesanan.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatefulWidget {
  Null get title => null;

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  final DateFormat format = DateFormat("dd-MM-yyyy");
  DateTime _tanggalAwal = DateTime(2022, 5, 19);
  DateTime _tanggalAkhir = DateTime(2022, 5, 21);
  final firstDate = DateTime(2022);
  final lastDate = DateTime(2023);

  late String tglAwal = DateFormat.yMMMd().format(_tanggalAwal);
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
                    CardBookingDipesan(tglawal : _tanggalAwal, tglakhir : _tanggalAkhir),
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
                    CardBookingSelesai(),
                    CardBookingSelesai(),
                    CardBookingSelesai(),
                    CardBookingSelesai(),
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

class CardBookingDipesan extends StatelessWidget {

  const CardBookingDipesan({required this.tglawal, required this.tglakhir});

  final DateTime tglawal;
  final DateTime tglakhir;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HistoryPemesanan();
        }));
      },
      child: Column(
        children: [
          // LAYOUT ATAS CARD BOOKING
          Container(
            // width: 200,
            height: 60,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadiusDirectional.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('assets/4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              alignment: Alignment.bottomRight,
              child: Text(
                'Villa Bogor',
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
              borderRadius:
                  BorderRadiusDirectional.vertical(bottom: Radius.circular(10)),
              color: Colors.blue.shade800,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Check in : ' +
                        DateFormat.yMMMEd().format(tglawal),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Check out : ' +
                        DateFormat.yMMMEd().format(tglakhir),
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
    );
  }
}

class CardBookingSelesai extends StatelessWidget {
  const CardBookingSelesai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HistoryPemesanan();
        }));
      },
      child: Column(
        children: [
          // LAYOUT ATAS CARD BOOKING
          Container(
            // width: 200,
            height: 60,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadiusDirectional.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('assets/4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              alignment: Alignment.bottomRight,
              child: Text(
                'Villa Bogor',
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
              borderRadius:
                  BorderRadiusDirectional.vertical(bottom: Radius.circular(10)),
              color: Colors.blue.shade800,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Check In : ' +
                        DateFormat.yMMMEd().format(DateTime(2022, 4, 12)),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Check out : ' +
                        DateFormat.yMMMEd().format(DateTime(2022, 4, 15)),
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
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
