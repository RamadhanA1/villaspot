import 'package:flutter/material.dart';
import 'package:villaspot/1_welcomescreen.dart';
import 'package:villaspot/4_Homepage.dart';
import 'package:villaspot/6.1_Chatroom.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';

class ChatPage extends StatefulWidget {
  Null get title => null;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('Chat'),
      ),
      // AKHIR APPBAR

      // BODY
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
          // child: SingleChildScrollView(
          child: ListView(
            children: [
              // AWAL SECTION BELUM DIBACA
              Container(
                child: Column(
                  children: [
                    // AWAL TAG BELUM DIBACA
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Belum Dibaca',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.blueGrey.shade900),
                      ),
                    ),
                    // AKHIR TAG BELUM DIBACA
                    CardChat(
                      profil: 'assets/11.jpg',
                      orang: 'Ramadhan Amannu',
                    ),
                  ],
                ),
              ),
              // AKHIR SECTION BELUM DIBACA

              // AWAL SECTION SUDAH DIBACA
              Container(
                child: Column(
                  children: [
                    // AWAL TAG SUDAH DIBACA
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Sudah Dibaca',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.blueGrey.shade900),
                      ),
                    ),
                    // AKHIR TAG SUDAH DIBACA
                    CardChat(
                      profil: 'assets/12.jpg',
                      orang: 'Kharil Anwar',
                    ),
                    CardChat(
                      profil: 'assets/13.jpg',
                      orang: 'Ryah Bahri Harahap',
                    ),
                    CardChat(
                      profil: 'assets/14.jpg',
                      orang: 'Billah Belhaz',
                    ),
                    CardChat(
                      profil: 'assets/15.jpg',
                      orang: 'Albertus Noe',
                    ),
                    CardChat(
                      profil: 'assets/16.jpg',
                      orang: 'Risma Triananda',
                    ),
                  ],
                ),
              ),
              // AKHIR SECTION SUDAH DIBACA
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
                      color: Colors.white,
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.white),
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

class CardChat extends StatelessWidget {
  CardChat({required this.profil, required this.orang});
  // const CardChat({Key? key}) : super(key: key);

  final String profil;
  final String orang;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        // AWAL CARD BELUM DIBACA
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Chatroom()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade50),
            child: Center(
              child: Column(
                children: [
                  new ListTile(
                    leading: new CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: new AssetImage(profil
                          // 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                          ),
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          orang,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          '23:59',
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
        // AKHIR CARD BELUM DIBACA
        );
  }
}
