import 'package:flutter/material.dart';
import 'package:villaspot/4.3_PemesananDone.dart';
import 'package:villaspot/5_History.dart';

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
                width: 720,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  // height: 10,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Villa Bogor',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //   child: Image.asset(
              //     'assets/3.jpg',
              //     width: 720,
              //     height: 225,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Container(
              //   color: Colors.grey,
              //   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              //   child: Row(
              //     children: [
              //       Container(
              //         alignment: Alignment.centerLeft,
              //         child: Text(
              //           'Villa Bogor',
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold, fontSize: 24),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Info Pemesanan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  )),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                // color: Colors.grey.shade400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    child: Icon(Icons.calendar_today_rounded)),
                                Container(
                                  child: Text(
                                    'Check In',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '13 Mei 2022',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    child: Icon(Icons.calendar_today_rounded)),
                                Container(
                                  child: Text(
                                    'Check Out',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '13 Mei 2022',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 3),
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
                  ],
                ),
              ),
              //AWALAN DESKRIPSI SI PEMESAN
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Bambang Sutojo',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text('KharilAnwar@gmail.com',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text('0811-111-1111',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      alignment: Alignment.centerLeft,
                    )
                  ],
                ),
              ),
              //AKHIRAN DESKRIPSI SI PEMESAN
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 3),
                      child: Text('Payment Information',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      alignment: Alignment.centerLeft,
                    ),
                    //AWALAN HARGA
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text('2 Night x Rp 1.500.000',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            child: Text('Rp 3.000.000',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            alignment: Alignment.centerLeft,
                          )
                        ],
                      ),
                    ),
                    //AWALAN TOMBOL PEMESANAN SELESAI
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HistoryPage()));
                        },
                        child: Text(
                          'Pemesanan Selesai',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blue.shade900),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //AKHIR TOMBOL KONFIRMASI PEMESANAN
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
