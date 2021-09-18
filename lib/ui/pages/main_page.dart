import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/settings_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currengIndex) {
      switch (currengIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TransactionPage();
          break;
        case 2:
          return WalletPage();
          break;
        case 3:
          return SettingPage();
          break;
        default:
          return HomePage();
      }
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
                  index: 0,
                  imageUrl: 'assets/icon_home.png',
                ),
                CustomButtonNavigationItem(
                  index: 1,
                  imageUrl: 'assets/icon_booking.png',
                ),
                CustomButtonNavigationItem(
                  index: 2,
                  imageUrl: 'assets/icon_card.png',
                ),
                CustomButtonNavigationItem(
                  index: 3,
                  imageUrl: 'assets/icon_settings.png',
                ),
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [buildContent(currentIndex), customBottomNavigation()],
          ),
        );
      },
    );
  }
}
