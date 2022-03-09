// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Internal KOC`
  String get KOC {
    return Intl.message(
      'Internal KOC',
      name: 'KOC',
      desc: '',
      args: [],
    );
  }

  /// `Internal KOC Application`
  String get KOCApplication {
    return Intl.message(
      'Internal KOC Application',
      name: 'KOCApplication',
      desc: '',
      args: [],
    );
  }

  /// `APPLY`
  String get Apply {
    return Intl.message(
      'APPLY',
      name: 'Apply',
      desc: '',
      args: [],
    );
  }

  /// `Want to have a large number of fans and be influential?`
  String get ApplyMsg1 {
    return Intl.message(
      'Want to have a large number of fans and be influential?',
      name: 'ApplyMsg1',
      desc: '',
      args: [],
    );
  }

  /// `Come and apply to become an internal KOC! `
  String get ApplyMsg2 {
    return Intl.message(
      'Come and apply to become an internal KOC! ',
      name: 'ApplyMsg2',
      desc: '',
      args: [],
    );
  }

  /// `I agree`
  String get agree {
    return Intl.message(
      'I agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `《BESTSELLER Portait User Agreement》`
  String get attorney {
    return Intl.message(
      '《BESTSELLER Portait User Agreement》',
      name: 'attorney',
      desc: '',
      args: [],
    );
  }

  /// `《BESTSELLER Portait User Agreement》2`
  String get attorney2 {
    return Intl.message(
      '《BESTSELLER Portait User Agreement》2',
      name: 'attorney2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
