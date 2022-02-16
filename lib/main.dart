import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guardian/extensions/resources.dart';
import 'package:guardian/widgets/landing_page_1st.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LandingPage_1st(),
      debugShowCheckedModeBanner: false,
    );
  }
}
