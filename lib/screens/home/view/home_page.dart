import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:goapitest/core/constants/colors/colors.dart';
import 'package:goapitest/core/constants/test/test_list.dart';
import 'package:goapitest/core/constants/urls/urls.dart';
import 'package:goapitest/core/utils/translation/locale_keys.g.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/ad/ad_manager.dart';
import '../viewmodel/home_view_model.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const _HomeSpecialOffer(),
              const _Popular(),
              const _NewArrivals(),
              const SizedBox(
                height: 30,
              ),
              Consumer<AdManager>(
                builder: (BuildContext context, value, Widget? child) {
                  if (value.getBannerAd != null) {
                    return SizedBox(
                      height: 50,
                      child: AdWidget(
                        ad: value.getBannerAd!,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
