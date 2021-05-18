import 'package:flutter/material.dart';
import 'multi_data_reusable_card.dart';

class SubJobTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          MultiDataReusableCard(
            bannerText: 'Fan repair',
            rating: '4.5',
            hourDetails: 'One hour for fixing a fan',
            hourRate: '100',
            onPress: () {
              // bills page
            },
          ),
          MultiDataReusableCard(
            bannerText: 'Switch Board Installation',
            rating: '4.5',
            hourDetails: 'One hour for fixing a switch board',
            hourRate: '50',
            onPress: () {
              // bills page
            },
          ),
          MultiDataReusableCard(
            bannerText: 'Ac Installation',
            rating: '4.5',
            hourDetails: 'Two hours for installing an AC',
            hourRate: '250',
            onPress: () {
              // bills page
            },
          ),
          MultiDataReusableCard(
            bannerText: 'Mixi',
            rating: '4.5',
            hourDetails: 'One hour for fixing a mixi',
            hourRate: '250',
            onPress: () {
              // bills page
            },
          ),
          MultiDataReusableCard(
            bannerText: 'Mixi',
            rating: '4.5',
            hourDetails: 'One hour for fixing a mixi',
            hourRate: '250',
            onPress: () {
              // bills page
            },
          ),
          MultiDataReusableCard(
            bannerText: 'Mixi',
            rating: '4.5',
            hourDetails: 'One hour for fixing a mixi',
            hourRate: '250',
            onPress: () {
              // bills page
            },
          ),
        ],
      ),
    );
  }
}
