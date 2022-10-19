import 'package:flutter/material.dart';
import 'package:web_app/responsive/dekstop_scaffold.dart';
import 'package:web_app/responsive/mobile_scaffold.dart';
import 'package:web_app/responsive/responsive_layout.dart';
import 'package:web_app/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        dekstopScaffold: const DekstopScaffold(),
      ),
    );
  }

}
