import 'package:flutter/material.dart';
import 'package:web_app/constant.dart';
import 'package:web_app/utils/my_box.dart';
import 'package:web_app/utils/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({ Key key }) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: defaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder( itemCount: 4, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                return MyBox();
              }),
            ),
          ),

          Expanded(child: ListView.builder(itemCount: 5, itemBuilder: (context, index) {
            return MyTile();
          }))
        ],
      ),
    );
  }
}