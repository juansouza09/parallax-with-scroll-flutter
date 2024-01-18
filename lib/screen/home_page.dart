import 'package:flutter/material.dart';
import 'package:parallax_flutter/widget/parallax_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(() {
              rateFive -= (v.scrollDelta! / 1);
              rateFour -= (v.scrollDelta! / 1.5);
              rateThree -= (v.scrollDelta! / 2);
              rateTwo -= (v.scrollDelta! / 2.5);
              rateOne -= (v.scrollDelta! / 3);
              rateZero -= (v.scrollDelta! / 3.5);
            });
          }
          return true;
        },
        child: Stack(
          children: [
            ParallaxWidget(top: rateZero, asset: 'parallax_0'),
            ParallaxWidget(top: rateOne, asset: 'parallax_1'),
            ParallaxWidget(top: rateTwo, asset: 'parallax_2'),
            ParallaxWidget(top: rateThree, asset: 'parallax_3'),
            ParallaxWidget(top: rateFour, asset: 'parallax_4'),
            ParallaxWidget(top: rateFive, asset: 'parallax_5'),
            ListView(
              children: [
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: const Color(0xff210002),
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 70),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Parallax In",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "MontSerrat-ExtraLight",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 51,
                            fontFamily: "MontSerrat-Regular",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Flutter is Love 🔥",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-Regular",
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
