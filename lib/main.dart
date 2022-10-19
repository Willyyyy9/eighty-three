import 'package:eightythree/providers/json_provider.dart';
import 'package:eightythree/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => JsonProvider()))
      ],
      child: GetMaterialApp(
        title: 'Eighty Three',
        smartManagement: SmartManagement.keepFactory,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedTextStyle: GoogleFonts.poppins()),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
