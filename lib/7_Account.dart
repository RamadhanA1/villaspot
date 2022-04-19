// import 'package:flutter/material.dart';
// import 'package:villaspot/4-3_chat.dart';
// import 'package:villaspot/5_History.dart';
// import 'package:villaspot/7_Account.dart';

// class Accountpage extends StatefulWidget {
//   Null get title => null;

//   @override
//   _AccountpageState createState() => _AccountpageState();
// }

// class _AccountpageState extends State<Accountpage> with SingleTickerProviderStateMixin {
//   // late TabController controller;

//   // @override
//   // void initState() {
//   //   controller = new TabController(length: 4, vsync: this);
//   //   super.initState();
//   // }

//   // @override
//   // void dispose() {
//   //   controller.dispose();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         automaticallyImplyLeading: true,
//         backgroundColor: Colors.blue[400],
//         title: Text('Account'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             // Container(
//             //     padding: EdgeInsets.only(bottom: 10),
//             //     child: new Image.network(
//             //   'https://cdn.pixabay.com/photo/2020/03/21/20/03/real-estate-4955086__340.jpg',
//             //   width: 1080,
//             //   height: 150,
//             //   fit: BoxFit.cover,
//             // )),
//             Container(
//                 padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'Rekomendasi',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//                   ),
//                 )),
//             Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   child: GridView.count(
//               crossAxisCount: 2,
//               childAspectRatio: 16 / 9,
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   color: Colors.blue,
//                 ),
//               ],
//             )
//                 ),
//                 )
//           ],
//         ),
//       ),

//       // body: new Tab,
//       bottomNavigationBar: new Material(
//         color: Colors.blue[400],
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               InkWell(
//                 onTap: () {
//                   null;
//                 },
//                 child: Container(
//                     child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.home,
//                       color: Colors.white,
//                     ),
//                     Text(
//                       "Home",
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 )),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                       return HistoryPage();
//                     }));
//                 },
//                 child: Container(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.history_sharp,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                   Text(
//                     "History",
//                     style: TextStyle(color: Colors.white.withOpacity(0.8)),
//                   )
//                 ],
//               )),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                       return ChatPage();
//                     }));
//                 },
//                 child: Container(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.chat_sharp,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                   Text(
//                     "Chat",
//                     style: TextStyle(color: Colors.white.withOpacity(0.8)),
//                   )
//                 ],
//               )),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                       return Accountpage();
//                     }));
//                 },
//                 child: Container(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.account_circle_rounded,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                   Text(
//                     "Account",
//                     style: TextStyle(color: Colors.white.withOpacity(0.8)),
//                   )
//                 ],
//               )),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerms = [
//     'Hotel Bogor 1',
//     'Hotel Bogor 2',
//     'Hotel Bogor 3',
//     'Hotel Bogor 4',
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var hotel in searchTerms) {
//       if (hotel.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(hotel);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var hotel in searchTerms) {
//       if (hotel.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(hotel);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }
