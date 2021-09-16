import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_get_started.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Explore new world with us and let yourself get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                    textAlign: TextAlign.center),
                Container(
                    margin: EdgeInsets.only(top: 50, bottom: 80),
                    width: 220,
                    height: 55,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(defaultRadius))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: Text('Get Started',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
