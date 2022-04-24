import 'package:flutter/material.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';

class Home extends StatefulWidget {
  Null get title => null;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // late TabController controller;

  // @override
  // void initState() {
  //   controller = new TabController(length: 4, vsync: this);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // APPBAR
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[400],
        title: Text('Homepage'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      // AKHIR APPBAR

      // BODY
      body: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 10),
                child: new Image.asset(
                  'assets/10.jpg',
                  width: 1080,
                  height: 150,
                  fit: BoxFit.cover,
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Rekomendasi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                )),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 16 / 9,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/2.jpg',
                          // width: 1080,
                          // height: 150,
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0.0),
                          child: Text(
                            "Villa Bogor 1 Rp1.000.000/Malam",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        margin: EdgeInsets.all(0),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          child: Text(
                            "Villa Bogor 2 Rp1.500.000/Malam",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        margin: EdgeInsets.all(0),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/2.jpg',
                          // width: 1080,
                          // height: 150,
                          fit: BoxFit.cover,
                        ),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0.0),
                          child: Text(
                            "Villa Bogor 1 Rp1.000.000/Malam",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        margin: EdgeInsets.all(0),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0.0),
                          child: Text(
                            "Villa Bogor 2 Rp1.500.000/Malam",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        margin: EdgeInsets.all(0),
                      ),
                    ],
                  )),
            )
          ],
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
                  null;
                },
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Accountpage();
                    }));
                },
                child: Container(
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
                )),
              ),
            ],
          ),
        ),
      ),
      // AKHIR BOTTOM NAVGATION
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Hotel Bogor 1',
    'Hotel Bogor 2',
    'Hotel Bogor 3',
    'Hotel Bogor 4',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var hotel in searchTerms) {
      if (hotel.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(hotel);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var hotel in searchTerms) {
      if (hotel.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(hotel);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
