import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:menuOne/animation/fadeAnimation.dart';
import 'package:menuOne/utils/background.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  startTimer() async {
    Duration duration = Duration(seconds: 12);
    return Timer(duration, navigatePage);
  }

  void navigatePage() => Navigator.of(context).pushReplacementNamed("menu");

  AnimationController controler;
  Animation<double> animation;

  void initState() {
    super.initState();
    controler = AnimationController(
        duration: Duration(microseconds: 9000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 0.9).animate(controler)
      ..addListener(() {});
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          colorsBackgroud(),
          FadeAnimation(
              1.6,
              Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.transparent,
                  // height: 100,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Power by",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Maurice Bagalwa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
              // transitor(context, controler)
              ),
          FadeAnimation(
              1,
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/images/logo_ecommerce.svg',
                    width: MediaQuery.of(context).size.width * .5),
              )),
        ],
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => SplashBLoC()),
//         // ChangeNotifierProvider(create: (_) => PageViewBLoC()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Splash(),
//       ),
//     );
//   }
// }
