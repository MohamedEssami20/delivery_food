import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_color.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return StatefulBuilder(
      builder: (context, setState) => BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 0.0,
        currentIndex: currentIndex,
        backgroundColor: Colors.green,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bagShopping), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
