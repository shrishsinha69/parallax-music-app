// // import 'package:flutter/material.dart';
// // import '../Dataset/Song.dart';
// //
// // class SongContainer extends StatelessWidget {
// //   final Song song;
// //   final double topMargin;
// //   final double leftMargin;
// //   final double imgSize;
// //   final bool isCompleted;
// //
// //   const SongContainer({
// //     required Key key,
// //     required this.song,
// //     required this.topMargin,
// //     required this.leftMargin,
// //     required this.imgSize,
// //     required this.isCompleted,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Positioned(
// //       top: topMargin,
// //       left: leftMargin,
// //       right: 0,
// //       child: Row(
// //         children: [
// //           Container(
// //             height: imgSize,
// //             width: imgSize,
// //             child: Image.asset(
// //               'assets/${song.image}',
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           Expanded(
// //             child: isCompleted
// //                 ? Container(
// //               color: Colors.transparent,
// //               padding: EdgeInsets.only(left: 20),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     song.title,
// //                     style: TextStyle(
// //                       fontSize: 22,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   SizedBox(height: 10),
// //                   Text(
// //                     song.year,
// //                     style: TextStyle(
// //                       fontSize: 15,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             )
// //                 : SizedBox.shrink(),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:parallax/Screens/HomeScreen.dart';
// import '../Dataset/Song.dart';
// import '../Screens/SongDetails.dart';
// // import 'SongDetailPage.dart'; // Import the SongDetailPage
//
// class SongContainer extends StatelessWidget {
//   final Song song;
//   final double topMargin;
//   final double leftMargin;
//   final double imgSize;
//   final bool isCompleted;
//
//   const SongContainer({
//     required Key key,
//     required this.song,
//     required this.topMargin,
//     required this.leftMargin,
//     required this.imgSize,
//     required this.isCompleted,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: topMargin,
//       left: leftMargin,
//       right: 0,
//       child: GestureDetector(
//         onTap: () {
//           // Navigate to the SongDetailPage with the selected song
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => HomeScreen(),
//             ),
//           );
//         },
//         child: Row(
//           children: [
//             Container(
//               height: imgSize,
//               width: imgSize,
//               child: Image.asset(
//                 'assets/${song.image}',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Expanded(
//               child: isCompleted
//                   ? Container(
//                 color: Colors.transparent,
//                 padding: EdgeInsets.only(left: 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       song.title,
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       song.year,
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//                   : SizedBox.shrink(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../Dataset/Song.dart';
import '../Screens/HomeScreen.dart'; // Import the HomeScreen

class SongContainer extends StatelessWidget {
  final Song song;
  final double topMargin;
  final double leftMargin;
  final double imgSize;
  final bool isCompleted;

  const SongContainer({
    required Key key,
    required this.song,
    required this.topMargin,
    required this.leftMargin,
    required this.imgSize,
    required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      left: leftMargin,
      right: 0,
      child: GestureDetector(
        onTap: () {
          // Navigate to the HomeScreen with the selected song
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(song: song),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              height: imgSize,
              width: imgSize,
              child: Image.asset(
                'assets/${song.image}',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: isCompleted
                  ? Container(
                color: Colors.transparent,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.title,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      song.year,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
