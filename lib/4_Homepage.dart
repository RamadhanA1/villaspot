import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:villaspot/4.1_VillaDesk.dart';
import 'package:villaspot/4.3_PemesananDone.dart';
import 'package:villaspot/6_Chat.dart';
import 'package:villaspot/5_History.dart';
import 'package:villaspot/7_Account.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_page_indicator/flutter_page_indicator.dart';
// import 'package:transformer_page_view/transformer_page_view.dart';

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
        title: Text('VillaSpot'),
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
            ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 150,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/3.jpg',
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                print('Page changed: $value');
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
            // Container(
            //     padding: EdgeInsets.only(bottom: 10),
            //     // child: Swiper(
            //     //   itemCount: 5,
            //     //   itemBuilder: (BuildContext context, int index) {
            //     //     return Image.asset('assets/10.jpg',
            //     //         width: 1080, height: 150, fit: BoxFit.cover);
            //     //   },
            //     // )
            //     child: new Image.asset(
            //       'assets/10.jpg',
            //       width: 1080,
            //       height: 150,
            //       fit: BoxFit.cover,
            //     )),
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: [
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      cardVilla(),
                      // //Awalan
                      // Container(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //   child: InkWell(
                      //     onTap: () {},
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //         image: DecorationImage(
                      //           image: AssetImage('assets/4.jpg'),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //       child: Container(
                      //         // height: 10,
                      //         alignment: Alignment.bottomCenter,
                      //         padding: EdgeInsets.all(8),
                      //         decoration: BoxDecoration(
                      //           color: Colors.blue.shade900.withOpacity(0.1),
                      //         ),
                      //         child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Container(
                      //               child: Text(
                      //                 'Villa Bogor',
                      //                 style: TextStyle(
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.w800,
                      //                     color: Colors.white),
                      //               ),
                      //             ),
                      //             Container(
                      //               child: Text(
                      //                 'Rp 100.000,-',
                      //                 style: TextStyle(
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.w800,
                      //                     color: Colors.white),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // //Akhiran
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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

class cardVilla extends StatelessWidget {
  const cardVilla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      // padding:
      //     EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return VillaDesk();
          }));
        },
        child: Column(
          children: [
            Container(
              height: 20,
              // width: 160,
              color: Colors.blue.shade500,
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Puncak, Bogor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 170,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  // ==> TARUH SOURCE GAMBAR DISINI
                  'assets/4.jpg',
                  // TARUH SOURCE GAMBAR DISINI <==
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 20,
              // width: 160,
              color: Colors.blue.shade500,
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Villa Bogor',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Rp 1.500.000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
