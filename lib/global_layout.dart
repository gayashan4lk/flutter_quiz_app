// import 'package:flutter/material.dart';

// class GlobalLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           decoration: const BoxDecoration(
//             color: Colors.deepPurple,
//           ),
//           child: Stack(
//             children: <Widget>[
//               PageView(
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 children: <Widget>[
//                   Container(
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
//                             child: Image.asset(
//                               "assets/images/quiz-logo.png",
//                               width: 200,
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
//                             child: const Text(
//                               "Quiz App",
//                               style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
//                             ),
//                           ),
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               Navigator.pushNamed(context, "/shop");
//                             },
//                             icon: const Icon(Icons.arrow_right_alt),
//                             label: const Text("Start Quiz"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           const Text("Shop Page"),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Text("Go Back"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 bottom: 20,
//                 left: 0,
//                 right: 0,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List<Widget>.generate(2, (int index) {
//                     return Container(
//                       width: 10,
//                       height: 10,
//                       margin: const EdgeInsets.symmetric(horizontal: 5),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: currentPage == index ? Colors.white : Colors.white.withOpacity(0.5),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }

// class GlobalLayoutState extends State<GlobalLayout> {
//   int currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           decoration: const BoxDecoration(
//             color: Colors.deepPurple,
//           ),
//           child: Stack(
//             children: <Widget>[
//               PageView(
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 children: <Widget>[
//                   Container(
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
//                             child: Image.asset(
//                               "assets/images/quiz-logo.png",
//                               width: 200,
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
//                             child: const Text(
//                               "Quiz App",
//                               style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
//                             ),
//                           ),
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               Navigator.pushNamed(context, "/shop");
//                             },
//                             icon: const Icon(Icons.arrow_right_alt),
//                             label: const Text("Start Quiz"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           const Text("Shop Page"),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Text("Go Back"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 bottom: 20,
//                 left: 0,
//                 right: 0,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List<Widget>.generate(2, (int index) {
//                     return Container(
//                       width: 10,
//                       height: 10,
//                       margin: const EdgeInsets.symmetric(horizontal: 5),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: currentPage == index ? Colors.white : Colors.white.withOpacity(0.5),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }

// // Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               Container(
// //                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
// //                 child: Image.asset(
// //                   "assets/images/quiz-logo.png",
// //                   width: 200,
// //                 ),
// //               ),
// //               Container(
// //                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
// //                 child: const Text(
// //                   "Quiz App",
// //                   style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
// //                 ),
// //               ),
// //               ElevatedButton.icon(
// //                 onPressed: () {
// //                   Navigator.pushNamed(context, "/shop");
// //                 },
// //                 icon: const Icon(Icons.arrow_right_alt),
// //                 label: const Text("Start Quiz"),
// //               ),
// //             ],
// //           ),
// //         ),
