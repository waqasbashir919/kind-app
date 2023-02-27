import 'package:flutter/material.dart';
import 'package:kind/view/choose_app.dart';
import 'package:kind/view/driver_review.dart';
import 'package:kind/view/favorite_dirver.dart';
import 'package:kind/view/get_started.dart';
import 'package:kind/view/home.dart';
import 'package:kind/view/inbox.dart';
import 'package:kind/view/login.dart';
import 'package:kind/view/message.dart';
import 'package:kind/view/notifications.dart';
import 'package:kind/view/otp.dart';
import 'package:kind/view/pickup_confirmation.dart';
import 'package:kind/view/signup.dart';
import 'package:kind/view/wallet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(360, 720),
    builder: ((context, child) => MaterialApp(
          initialRoute: './',
          routes: {
            // './': ((context) => ChooseApp()),
            // './': ((context) => GetStarted()),
            // '/driver_review': ((context) => DriverReview()),
            // '/fav_driver': ((context) => FavoriteDriver()),
            // '/wallet': ((context) => Wallet()),
            './': ((context) => GetStarted()),
            '/login': ((context) => Login()),
            '/signup': ((context) => SignUp()),
            '/otp': ((context) => Otp()),
            '/home': ((context) => Home()),
            '/pickup': ((context) => PickupConfirmation()),
            '/driver_review': ((context) => DriverReview()),
            '/notification': ((context) => NotificationsPage()),
            '/fav_driver': ((context) => FavoriteDriver()),
            '/wallet': ((context) => Wallet()),
            '/inbox': ((context) => Inbox()),
            '/messages': ((context) => Messages()),
            
          },
        )),
  ));
}
