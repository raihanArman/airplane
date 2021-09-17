import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy\nKezia Anne',
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'where to fly today ?',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.dart'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DestinationCard(
                  name: 'Lake Ciliwung',
                  city: 'Tangerang',
                  imageUrl: 'assets/image_destination1.dart',
                  rating: 4.8,
                ),
                DestinationCard(
                  name: 'White Houses',
                  city: 'Spain',
                  imageUrl: 'assets/image_destination2.dart',
                  rating: 4.7,
                ),
                DestinationCard(
                  name: 'Kevin de bruyne',
                  city: 'Monaco',
                  imageUrl: 'assets/image_destination3.dart',
                  rating: 4.8,
                ),
                DestinationCard(
                  name: 'Lake Ciliwung',
                  city: 'Japan',
                  imageUrl: 'assets/image_destination4.dart',
                  rating: 5.0,
                ),
                DestinationCard(
                  name: 'Lake Ciliwung',
                  city: 'Singapore',
                  imageUrl: 'assets/image_destination5.dart',
                  rating: 4.8,
                ),
              ],
            ),
          ));
    }

    return ListView(
      children: [header(), popularDestination()],
    );
  }
}
