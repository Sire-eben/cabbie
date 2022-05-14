import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:naija_cabbie/HomeScreen/home.dart';
import 'package:naija_cabbie/Navigation%20pages/home_page.dart';

import '../../Global/global.dart';

class StartTrip extends StatefulWidget {
  const StartTrip({Key? key}) : super(key: key);

  @override
  State<StartTrip> createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/map_background_movement.png"))),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: screenSize.height * 0.6,
                  width: screenSize.width,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          width: 56,
                          child: Divider(
                            thickness: 5,
                            color: Color(0xfff0f1f5),
                          )),
                      const Text(
                        "YOU ARE SET!",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: kPrimaryColor,
                              radius: 25,
                              backgroundImage: const AssetImage(
                                  "assets/images/autumn-goodman-vTL_qy03D1I-unsplash.jpg"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Yemi Badmus",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "09087654321",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Trip"),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_searching_rounded,
                                  size: 20,
                                  color: kPinkColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "Queen Street 73",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 8,
                              width: 2,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 8,
                              width: 2,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 8,
                              width: 2,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 8,
                              width: 2,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: kPrimaryColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "Lagos-Abeokuta Expressway KM 748",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 160,
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: const Text(
                              "Start trip",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
