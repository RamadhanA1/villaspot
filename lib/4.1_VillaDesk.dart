import 'package:flutter/material.dart';

class VillaDesk extends StatefulWidget {
  const VillaDesk({ Key? key }) : super(key: key);

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
          child: Column(
            children: [
              Container(
                height: 120,
                child: SingleChildScrollView(child: Row(
                  children: [
                    Image.asset('assets/1.jpg', height: 200, fit: BoxFit.fitHeight,),
                    
                  ],
                ),),
              ),
            ],
          ),
        ),
      ),
      // AKHIR BODY
    );
  }
}