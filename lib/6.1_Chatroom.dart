import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class Chatroom extends StatefulWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  _ChatroomState createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('Villa Bogor'),
      ),
      // AKHIR APPBAR
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Bubble(
              alignment: Alignment.center,
              color: Color.fromRGBO(212, 234, 244, 1.0),
              child: Text('TODAY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nip: BubbleNip.rightTop,
              color: Colors.blue.shade100,
              child: Text('Hello, World!', textAlign: TextAlign.right),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nip: BubbleNip.leftTop,
              child: Text('Mohon maaf, saat ini kami sedang offline. Silahkan hubungi melalui kontak whatsapp'),
            ),
            // Bubble(
            //   margin: BubbleEdges.only(top: 10),
            //   alignment: Alignment.topRight,
            //   nip: BubbleNip.rightBottom,
            //   color: Colors.blue.shade100,
            //   child: Text('Hello, World!', textAlign: TextAlign.right),
            // ),
            // Bubble(
            //   margin: BubbleEdges.only(top: 10),
            //   alignment: Alignment.topLeft,
            //   nip: BubbleNip.leftBottom,
            //   child: Text('Hi, developer!'),
            // ),
            // Bubble(
            //   margin: BubbleEdges.only(top: 10),
            //   alignment: Alignment.center,
            //   nip: BubbleNip.no,
            //   color: Color.fromRGBO(212, 234, 244, 1.0),
            //   child: Text('TOMORROW',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(fontSize: 11.0)),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      decoration: BoxDecoration(color: Colors.white, 
      boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),
      child: Row(
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.photo),
          //   iconSize: 25.0,
          //   color: Theme.of(context).primaryColor,
          //   onPressed: () {},
          // ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    ),
    );
  }
}
