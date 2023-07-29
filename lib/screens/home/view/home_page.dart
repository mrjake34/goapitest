import 'package:flutter/material.dart';
import 'package:goapitest/base/constants/colors/colors.dart';
import 'package:goapitest/base/constants/test/test_list.dart';
import 'package:kartal/kartal.dart';

part 'home_special_offer.dart';
part 'app_bar.dart';
part 'popular.dart';
part 'new_arrivals.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _AppBarSearchBar(),
        actions: const [
          _AppBarNotificationIcon(),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _HomeSpecialOffer(),
              _Popular(),
              _NewArrivals(),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
