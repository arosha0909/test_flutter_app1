import 'package:flutter/material.dart';

var myAppBar =  AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
        child: Column(children: const [
          DrawerHeader(child: Icon(Icons.dashboard)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('M E S S A G E'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('A B O U T'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          ),
        ],),
      );

var defaultBackground = Colors.grey[300];