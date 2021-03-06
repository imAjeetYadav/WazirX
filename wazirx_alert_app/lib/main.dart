import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wazirx_alert_app/model/feeds_provider.dart';

import './constants.dart';
import './model/cryptocurrency.dart';
import './screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(
        create: (_) => Cryptocurrency()),
          ChangeNotifierProvider(
        create: (_) => FeedsProvider()),
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WazirX Alert',
        theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        home: MainScreen(),
        // routes: {
        //   '/': (ctx) => MainScreen(),
        //   FavCoinsScreen.routeName: (ctx) => FavCoinsScreen(),
        //   // MealsDetailsScreen.routeName: (ctx) => MealsDetailsScreen(),
        // },
      ),
    );
  }
}
