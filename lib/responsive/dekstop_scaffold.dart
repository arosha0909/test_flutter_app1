import 'package:flutter/material.dart';
import 'package:web_app/constant.dart';
import 'package:web_app/utils/my_box.dart';
import 'package:web_app/utils/my_tile.dart';

class DekstopScaffold extends StatefulWidget {
  const DekstopScaffold({ Key key }) : super(key: key);

  @override
  State<DekstopScaffold> createState() => _DekstopScaffoldState();
}

class _DekstopScaffoldState extends State<DekstopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: defaultBackground,
      body: Row(
        children: [
          myDrawer,
          Expanded(flex: 2, child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder( itemCount: 4, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
                return MyBox();
              }),
            ),
          ),

          Expanded(child: ListView.builder(itemCount: 5, itemBuilder: (context, index) {
            return MyTile();
          }))
        ],
      ),),
      Expanded(child: Column(
        children: [
          Expanded(child: Container(color: Colors.grey[50],))
        ],
      ))
      ],
      ),
    );
  }
}
