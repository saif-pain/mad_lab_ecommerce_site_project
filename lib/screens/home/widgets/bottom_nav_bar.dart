import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FbottomBar extends StatefulWidget {
  const FbottomBar({
    super.key,
    required this.currentIndex,
    required this.ontapMethod,
  });
  final int currentIndex;
  final Function(int) ontapMethod;
  @override
  State<FbottomBar> createState() => _FbottomBarState();
}

class _FbottomBarState extends State<FbottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      selectedLabelStyle: TextStyle(fontSize: 9),
      unselectedLabelStyle: TextStyle(fontSize: 9),
      type: BottomNavigationBarType.fixed,
      onTap: widget.ontapMethod,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home_outline,
            size: 20,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.heart_outline,
            size: 20,
          ),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.shopping_bag_outline,
            size: 20,
          ),
          label: "ORDER",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesome.user,
            size: 20,
          ),
          label: "LOGIN",
        ),
      ],
    );
  }
}
