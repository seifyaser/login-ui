import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/login_page.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp( //DevicePreview(
   // enabled: !kReleaseMode,
   // builder: (context) => 
   MyApp(), 
  //),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      //for enable themes use that 2 next lines
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    );
  }
}
