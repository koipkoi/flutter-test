import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("test"),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: const Drawer(
          child: Text("drawer"),
        ),
      ),
      body: CupertinoButton(
        onPressed: () {
          final scaffold = scaffoldKey.currentState! as ScaffoldState;
          scaffold.openDrawer();
        },
        child: const Text("test"),
      ),
    );
  }
}
