import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final class TranslationManager extends EasyLocalization {
  TranslationManager({
    super.key,
    required super.child,
  }) : super(
          path: _assetPath,
          supportedLocales: LocaleEnums.getList,
          startLocale: LocaleEnums.en.locale,
        );

  static const String _assetPath = 'assets/translation';
}

enum LocaleEnums {
  en(Locale('en', 'US')),
  tr(Locale('tr', 'TR'));

  final Locale locale;

  const LocaleEnums(this.locale);

  static final List<Locale> getList = <Locale>[en.locale, tr.locale];
}
