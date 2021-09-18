import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                bottom: 30, left: defaultMargin, right: defaultMargin),
            height: 60,
            decoration: BoxDecoration(
                color: kWhiteCOlor, borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_settings.png',
                ),
              ],
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [buildContent(), customBottomNavigation()],
      ),
    );
  }
}
