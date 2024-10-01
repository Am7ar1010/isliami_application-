import 'package:application_islami/ui/teps/hadith%20tep/hadith%20view.dart';
import 'package:application_islami/ui/teps/quran%20tep/quran%20view.dart';
import 'package:application_islami/ui/teps/radio%20tep/radio%20view.dart';
import 'package:application_islami/ui/teps/sebha%20tep/sebha%20view.dart';
import 'package:application_islami/ui/teps/setting%20tep/settings%20view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var tapsView = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text("islami"),
        ),
        body: tapsView[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadith.png")),
                label: "Hadith"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha icn.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
