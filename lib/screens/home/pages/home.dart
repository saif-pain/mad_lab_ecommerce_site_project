import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mad_lab_ecommerce_site_project/utilities/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontSize: 9),
          unselectedLabelStyle: TextStyle(fontSize: 9),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_outline),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart_outline),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_bag_outline),
              label: "ORDER",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_bulk),
              label: "LOGIN",
            ),
          ]),
    );
  }
}

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Mega Shop",
        style: TextStyle(
            fontFamily: "DMSans",
            fontWeight: FontWeight.w700,
            color: Fcolors.ocenBlue),
      ),
      centerTitle: true,
      actions: [
        Container(
            padding: EdgeInsets.all(5),
            child: Icon(Iconsax.notification_bing_outline)),
        Container(padding: EdgeInsets.all(5), child: Icon(IonIcons.cart)),
      ],
    );
  }
}
