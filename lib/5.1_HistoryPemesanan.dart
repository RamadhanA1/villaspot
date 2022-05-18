import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:villaspot/4.3_PemesananDone.dart';
import 'package:villaspot/5_History.dart';

class HistoryPemesanan extends StatefulWidget {
  Null get title => null;

  @override
  _HistoryPemesanan createState() => _HistoryPemesanan();
}

class _HistoryPemesanan extends State<HistoryPemesanan>
    with SingleTickerProviderStateMixin {
  //memilih tanggal
  final DateFormat format = DateFormat("dd-MM-yyyy");
  DateTime _tanggalAwal = DateTime(2022, 5, 19);
  DateTime _tanggalAkhir = DateTime(2022, 5, 21);
  final firstDate = DateTime(2022);
  final lastDate = DateTime(2023);
  // int difference = _tanggalAkhir.difference(_tanggalAwal).inDays;

  // _pickTglAwal(BuildContext context) async {
  //   final DateTime? date1 = await showDatePicker(
  //       context: context,
  //       initialDate: _tanggalAwal,
  //       firstDate: firstDate,
  //       lastDate: lastDate);
  //   if (date1 != null) {
  //     setState(() {
  //       _tanggalAwal = date1;
  //     });
  //   }
  // }

  // _pickTglAkhir(BuildContext context) async {
  //   final DateTime? date2 = await showDatePicker(
  //       context: context,
  //       initialDate: _tanggalAkhir,
  //       firstDate: firstDate,
  //       lastDate: lastDate);
  //   if (date2 != null) {
  //     setState(() {
  //       _tanggalAkhir = date2;
  //       _countDay = _tanggalAkhir.difference(_tanggalAwal).inDays;
  //       _total = _countDay * _hargaPerMalam;
  //     });
  //   }
  // }

  //memilih tanggal

  // VALUE
  String _namaLengkap = 'Arfin Ilyas';
  String _email = 'ringgo_rrq@gmail.com';
  String _telepon = '089875686542';
  int _countDay = 2;
  int _hargaPerMalam = 1500000;
  int _total = 3000000;
  // VALUE

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('History Pemesanan'),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 720,
                height: 180,
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
                    // InkWell(
                    //   onTap: () => _pickTglAwal(context),
                    //   child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      // color: Colors.grey,
                      // height: 55,
                      // width: 150,
                      // alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: Colors.blueGrey.shade100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    DateFormat.yMMMd().format(_tanggalAwal),
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
                    // ),
                    // InkWell(
                    //   onTap: () => _pickTglAkhir(context),
                    //   child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      // color: Colors.grey,
                      // height: 55,
                      // width: 150,
                      // // alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //   color: Colors.blueGrey.shade100,
                      // ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    DateFormat.yMMMd()

                                        // displaying formatted date
                                        .format(_tanggalAkhir),
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
                    // ),
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
                        _namaLengkap,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text('$_email',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text('$_telepon',
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
                            child: Text(
                                '$_countDay Night x Rp. $_hargaPerMalam',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            child: Text('Rp. $_total',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            alignment: Alignment.centerLeft,
                          )
                        ],
                      ),
                    ),
                    //AWALAN TOMBOL KONFIRMASI PEMESANAN
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          AlertDialog alert = AlertDialog(
                            // title: Text('Konfirmasi Pemesanan'),
                            content: Text('Selesaikan Pemesanan?'),
                            // ListView(
                            //   children: [
                            //     Text('Villa Bogor'),
                            //     Text('Check In  : $_tanggalAwal'),
                            //     Text('Check Out : $_tanggalAkhir'),
                            //     Text('Total : Rp. $_total')
                            //   ],
                            // ),
                            actions: [
                              FlatButton(
                                textColor: Color(0xFF6200EE),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('CANCEL'),
                              ),
                              FlatButton(
                                textColor: Color(0xFF6200EE),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HistoryPage()));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Villa Selesai Digunakan, Terima Kasih!')),
                                  );
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                        },
                        child: Text(
                          'Selesaikan Pemesanan',
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
