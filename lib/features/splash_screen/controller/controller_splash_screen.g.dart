// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_splash_screen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashScreenController on _SplashScreenController, Store {
  late final _$setupStatusAtom =
      Atom(name: '_SplashScreenController.setupStatus', context: context);

  @override
  Generic<dynamic, dynamic> get setupStatus {
    _$setupStatusAtom.reportRead();
    return super.setupStatus;
  }

  @override
  set setupStatus(Generic<dynamic, dynamic> value) {
    _$setupStatusAtom.reportWrite(value, super.setupStatus, () {
      super.setupStatus = value;
    });
  }

  late final _$checkTokenValidAsyncAction =
      AsyncAction('_SplashScreenController.checkTokenValid', context: context);

  @override
  Future<void> checkTokenValid(BuildContext context) {
    return _$checkTokenValidAsyncAction
        .run(() => super.checkTokenValid(context));
  }

  @override
  String toString() {
    return '''
setupStatus: ${setupStatus}
    ''';
  }
}
