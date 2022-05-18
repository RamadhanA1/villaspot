import 'package:flutter/material.dart';
import 'package:villaspot/4.2_PagePemesanan.dart';
import 'package:villaspot/6.1_Chatroom.dart';

class VillaDesk extends StatefulWidget {
  const VillaDesk({Key? key}) : super(key: key);

  @override
  _VillaDeskState createState() => _VillaDeskState();
}

class _VillaDeskState extends State<VillaDesk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[400],
        title: Text('Deskripsi Villa'),
      ),
      // AKHIR APPBAR

      // AWAL BODY
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Container(
                height: 160,
                child: Expanded(
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset('assets/1.jpg'),
                      Image.asset('assets/6.jpg'),
                      Image.asset('assets/8.jpg'),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue.shade400,
                height: 45,
                // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp 1.500.000,-/Malam',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Chatroom()));
                        },
                        child: Icon(
                          Icons.chat,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagePemesanan()));
                        },
                        child: Text(
                          'Booking Now',
                          style: TextStyle(color: Colors.white, fontSize: 14),
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
                    ],
                  ),
                ),
              ),
              Container(
                height: 260,
                child: Container(
                  // color: Colors.amber,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lokasi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Jl. Agri Asri Intan, No. 54 Blok A Puri Bogor Indah, Kelurahan Cisarua, Kecamatan Cisarua, Kabupaten Bogor, Jawa Barat',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 160,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                color: Colors.blue.shade400,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 24,
                      width: 360,
                      color: Colors.blue.shade700,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: Text(
                          'Fasilitas',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 100,
                      width: 360,
                      color: Colors.white,
                      child: GridView.count(
                        crossAxisCount: 2,
                        // crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                        childAspectRatio: 7,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.bedroom_parent_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2 Kamar Tidur',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.security_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Satpam 24 Jam',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.bathtub_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '3 Kamar Mandi',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.camera_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'CCTV',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.kitchen_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Dapur',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.hot_tub_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Water Heater',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 24,
                      width: 360,
                      color: Colors.blue.shade700,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: Text(
                          'Kontak Villa',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 75,
                      width: 360,
                      color: Colors.white,
                      child: GridView.count(
                        crossAxisCount: 2,
                        // crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                        childAspectRatio: 7,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2 Kamar Tidur',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(':  08943268369')),
                          Row(
                            children: [
                              Icon(Icons.mail_outline_rounded),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Satpam 24 Jam',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(':  villa_abc@gmail.com')),
                        ],
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
    );
  }
}
