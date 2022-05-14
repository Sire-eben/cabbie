import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:naija_cabbie/Global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SizedBox(
        height: screenSize.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              width: screenSize.width,
              height: 200,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                color: kPrimaryColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Hi, Olawale",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        CircleAvatar(
                          radius: 38 / 2,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                              "assets/images/elizeu-dias-2EGNqazbAMk-unsplash.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 160, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: screenSize.width,
                      height: 122,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFDEDF5),
                                ),
                                child: Center(
                                  child: Icon(
                                    EvaIcons.person,
                                    size: 20,
                                    color: kPinkColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "There’s a pickup available.",
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "You have a shared ride awaiting pickup.",
                                    style: TextStyle(
                                        fontSize: 12, color: kSecondaryTextColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: kIconGreyColor,
                                    ),
                                    const Text(
                                      "Ikeja, Lagos",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      EvaIcons.personAdd,
                                      color: kIconGreyColor,
                                    ),
                                    const Text(
                                      "1",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: kIconGreyColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 275,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 70,
                                  child: Row(
                                    children: [
                                      Icon(
                                        EvaIcons.image2,
                                        color: kIconGreyColor,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "32Km",
                                            style: TextStyle(fontSize: 32),
                                          ),
                                          Text(
                                            "Traveled today",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: kSecondaryTextColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 2,
                                  color: kIconGreyColor,
                                ),
                                SizedBox(
                                  height: 70,
                                  child: Row(
                                    children: [
                                      Icon(
                                        EvaIcons.personAdd,
                                        color: kIconGreyColor,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "12",
                                            style: TextStyle(fontSize: 32),
                                          ),
                                          Text(
                                            "Passengers",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: kSecondaryTextColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Lottie.asset("assets/animations/20497-dlivery-map.json",
                                height: 170),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 106,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                    padding: EdgeInsets.all(10),
                                    decoration: const  BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff232E43)),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    )),
                                Text("Account")
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 106,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: 40,
                                    padding: EdgeInsets.all(10),
                                    decoration: const  BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff232E43)),
                                    child: const Icon(
                                      EvaIcons.pricetags,
                                      color: Colors.white,
                                    )),
                                Text("Promotion")
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 106,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: 40,
                                    padding: EdgeInsets.all(10),
                                    decoration: const  BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff232E43)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.monetization_on,
                                        color: Colors.white,
                                      ),
                                    )),
                                Text("Earnings")
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
