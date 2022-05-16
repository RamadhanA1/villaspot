import 'package:flutter/material.dart';

class PagePemesanan extends StatefulWidget {
  Null get title => null;

  @override
  _PagePemesanan createState() => _PagePemesanan();
}

class _PagePemesanan extends State<PagePemesanan>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('Deskripsi Pemesanan'),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/3.jpg',
                  width: 720,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Info Pemesanan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Personal Information',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.border_color_outlined),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
