import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:naija_cabbie/Global/global.dart';
import 'package:naija_cabbie/Navigation%20pages/home_page.dart';
import 'package:naija_cabbie/Navigation%20pages/profile.dart';
import 'package:naija_cabbie/Navigation%20pages/Trips/trip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final PageController homepageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Fluttertoast.showToast(msg: "Login Successful!");
  }

  int index = 0;
  final screens = [ const HomePage(),const TripPage(), const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.white60,
        height: 70,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationDestination(
              icon: const Icon(EvaIcons.gridOutline),
              label: "Home",
              selectedIcon: Icon(
                EvaIcons.grid,
                color: kPrimaryColor,
              )),
          NavigationDestination(
              icon: const Icon(EvaIcons.imageOutline),
              label: "Trip",
              selectedIcon: Icon(
                EvaIcons.image2,
                color: kPrimaryColor,
              )),
          NavigationDestination(
              icon: const Icon(EvaIcons.personOutline),
              label: "Profile",
              selectedIcon: Icon(
                EvaIcons.person,
                color: kPrimaryColor,
              )),
        ],
      ),
    );
  }
}
