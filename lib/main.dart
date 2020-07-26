import 'package:flutter/material.dart';
import 'package:shop_app/screens/home.dart';
import 'package:shop_app/screens/splash.dart';
import 'package:shop_app/widgets/common.dart';
import 'package:shop_app/provider/user_provider.dart';
import './screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => UserProvider.initialize(),
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: amberAccent,
    ),
    home: ScreensController(),
  )));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch(user.status){
      case Status.Uninitialized:
        return Splash();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return Login();
      case Status.Authenticated:
        return HomePage();
      default:
        return Login();
    }
  }
}




