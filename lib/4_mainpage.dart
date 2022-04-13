import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Null get title => null;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Search'),
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
      body: Container(
        child: Column(
          children: [
            Container(
                child: new Image.network(
              'https://cdn.pixabay.com/photo/2020/03/21/20/03/real-estate-4955086__340.jpg',
              width: 1080,
              height: 150,
              fit: BoxFit.cover,
            )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Rekomendasi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                )),
            Container(
              child: Center(
                child: ListView(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text("Coba-coba"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //     child: GridView.count(
            //   crossAxisCount: 2,
            //   childAspectRatio: 16 / 9,
            //   children: [
            //     Container(
            //       color: Colors.blue,
            //     )
            //   ],
            // ))
          ],
        ),
      ),

      // body: new Tab,
      bottomNavigationBar: new Material(
        color: Colors.blue[400],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.access_time_filled),
              text: "History",
            ),
            new Tab(
              icon: new Icon(Icons.chat_bubble_sharp),
              text: "Chat",
            ),
            new Tab(
              icon: new Icon(Icons.person),
              text: "Account",
            ),
          ],
        ),
      ),
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
