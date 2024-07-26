import 'package:flutter/material.dart';

import '../Dataset/movies.dart';
import '../MoviesListView.dart';
import 'MainHome.dart';
//
// class Pehlascreen extends StatefulWidget {
//   const Pehlascreen({Key? key}) : super(key: key);
//
//   @override
//   State<Pehlascreen> createState() => _PehlascreenState();
// }
//
// class _PehlascreenState extends State<Pehlascreen> {
//   ScrollController _scrollController1 = ScrollController();
//   ScrollController _scrollController2 = ScrollController();
//   ScrollController _scrollController3 = ScrollController();
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       double minScrollExtent1 = _scrollController1.position.minScrollExtent;
//       double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
//       double minScrollExtent2 = _scrollController2.position.minScrollExtent;
//       double maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
//       double minScrollExtent3 = _scrollController3.position.minScrollExtent;
//       double maxScrollExtent3 = _scrollController3.position.maxScrollExtent;
//
//       animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 25, _scrollController1);
//       animateToMaxMin(maxScrollExtent2, minScrollExtent2, maxScrollExtent2, 15, _scrollController2);
//       animateToMaxMin(maxScrollExtent3, minScrollExtent3, maxScrollExtent3, 20, _scrollController3);
//     });
//   }
//
//   void animateToMaxMin(double max, double min, double direction, int seconds, ScrollController scrollController) {
//     scrollController.animateTo(
//       direction,
//       duration: Duration(seconds: seconds),
//       curve: Curves.linear,
//     ).then((_) {
//       direction = direction == max ? min : max;
//       animateToMaxMin(max, min, direction, seconds, scrollController);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 MoviesListView(
//                   scrollController: _scrollController1,
//                   images: movies1, // Ensure movies1 is defined in your data file
//                 ),
//                 MoviesListView(
//                   scrollController: _scrollController2,
//                   images: movies2, // Ensure movies2 is defined in your data file
//                 ),
//                 MoviesListView(
//                   scrollController: _scrollController3,
//                   images: movies3, // Ensure movies3 is defined in your data file
//                 ),
//               ],
//             ),
//             Text(
//               '30 days for free',
//               style: TextStyle(
//                 fontSize: 35,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Material(
//               elevation: 0,
//               color: Color(0xfff2c94c),
//               borderRadius: BorderRadius.circular(20),
//               child: MaterialButton(
//                 onPressed: () {},
//                 minWidth: 340,
//                 height: 60,
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import '../Dataset/movies.dart';
// import '../MoviesListView.dart';
// import 'MainHome.dart'; // Import the MainHome file

class Pehlascreen extends StatefulWidget {
  const Pehlascreen({Key? key}) : super(key: key);

  @override
  State<Pehlascreen> createState() => _PehlaScreenState();
}

class _PehlaScreenState extends State<Pehlascreen> with TickerProviderStateMixin {
  late ScrollController _scrollController1;
  late ScrollController _scrollController2;
  late ScrollController _scrollController3;
  late ScrollController _scrollController4;
  late ScrollController _scrollController5;
  late AnimationController _buttonAnimationController;
  late Animation<double> _buttonAnimation;

  @override
  void initState() {
    super.initState();

    _scrollController1 = ScrollController();
    _scrollController2 = ScrollController();
    _scrollController3 = ScrollController();
    _scrollController4 = ScrollController();
    _scrollController5 = ScrollController();

    _buttonAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _buttonAnimation = Tween<double>(begin: 0, end: 9).animate(CurvedAnimation(
      parent: _buttonAnimationController,
      curve: Curves.easeInOut,
    ));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollControllersInit();
    });

    _buttonAnimationController.repeat(reverse: true);
  }

  void _scrollControllersInit() {
    _animateToMaxMin(_scrollController1);
    _animateToMaxMin(_scrollController2);
    _animateToMaxMin(_scrollController3);
    _animateToMaxMin(_scrollController4);
    _animateToMaxMin(_scrollController5);
  }

  void _animateToMaxMin(ScrollController scrollController) {
    double maxScrollExtent = scrollController.position.maxScrollExtent;
    double minScrollExtent = scrollController.position.minScrollExtent;

    scrollController
        .animateTo(
      maxScrollExtent,
      duration: Duration(seconds: 13),
      curve: Curves.linear,
    )
        .then((_) {
      scrollController
          .animateTo(
        minScrollExtent,
        duration: Duration(seconds: 13),
        curve: Curves.linear,
      )
          .then((_) {
        _animateToMaxMin(scrollController);
      });
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    _scrollController3.dispose();
    _scrollController4.dispose();
    _scrollController5.dispose();
    _buttonAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                MoviesListView(
                  scrollController: _scrollController1,
                  images: movies1,
                ),
                MoviesListView(
                  scrollController: _scrollController2,
                  images: movies2,
                ),
                MoviesListView(
                  scrollController: _scrollController3,
                  images: movies3,
                ),
                MoviesListView(
                  scrollController: _scrollController4,
                  images: movies2,
                ),
                MoviesListView(
                  scrollController: _scrollController5,
                  images: movies1,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                'Trending Songs',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(), // Add spacer to push button to bottom
            AnimatedBuilder(
              animation: _buttonAnimationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _buttonAnimation.value),
                  child: Material(
                    elevation: 0,
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mainhome()),
                        );
                      },
                      minWidth: 240,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20), // Add some space at the bottom
          ],
        ),
      ),
    );
  }
}
