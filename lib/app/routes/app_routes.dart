// ignore_for_file: constant_identifier_names
part of 'app_pages.dart';


abstract class Routes{
  Routes._(); //private constructor

  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const LOGIN = _Paths.LOGIN;
  static const SIGN_UP = _Paths.SIGN_UP;
  static const HOME = _Paths.HOME;

}


abstract class _Paths{
  _Paths._(); //private constructor

  static const SPLASH_SCREEN = '/';
  static const SIGN_UP = '/sign-up';
  static const LOGIN = '/login';
  static const HOME = '/home';
}