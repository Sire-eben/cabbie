import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../Global/global.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.black, size: 32 //change your color here
            ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //DISPLAY PICTURE
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                          "assets/images/elizeu-dias-2EGNqazbAMk-unsplash.jpg"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    //NAME AND EMAIL
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "David Olawale",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text("080298662538", style: TextStyle(fontSize: 14))
                      ],
                    ),
                    const Spacer(),

                    //EDIT PROFILE BUTTON
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, bottom: 8),
                        child: Text("MENU"),
                      ),

                      //EARNINGS
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kPrimaryColor),
                            child: const Icon(
                              EvaIcons.activity,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Earnings',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, color: Color(0xffC2C9D6),)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //VERIFICATION
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xff5087E1)),
                            child: const Icon(
                              Icons.shield,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Verification',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, color: Color(0xffC2C9D6),)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //SUPPORT
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Color(0xff232E43)),
                              child: const Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Support',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios, color: Color(0xffC2C9D6),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //REFERRAL
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: kPrimaryColor),
                              child: const Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Referral',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios, color: Color(0xffC2C9D6),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //SETTINGS
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffA5A6F6)),
                              child: const Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Settings',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios, color: Color(0xffC2C9D6),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
