import 'package:flutter/material.dart';
import 'package:flutter_application_1/comp/color_comp.dart';
import 'package:flutter_application_1/feature/tab/tab_provider.dart';
import 'package:flutter_application_1/router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TabProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
            primaryColor: primaryColor),
        onGenerateRoute: Routers.generateRoute,
        initialRoute: 'login-route',
      ),
    );
  }
}
