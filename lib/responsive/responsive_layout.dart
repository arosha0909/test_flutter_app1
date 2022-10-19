import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget dekstopScaffold;

  ResponsiveLayout({
    this.mobileScaffold,
    this.tabletScaffold,
    this.dekstopScaffold,
  });

  @override
  Widget build(BuildContext context) { 
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return dekstopScaffold;
      }
    },);
   }
}