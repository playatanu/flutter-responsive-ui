import 'package:flutter/material.dart';

class DrawMax extends StatelessWidget {
  const DrawMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('Name'),
        ),
        ListTile(
          title: Text('Name'),
        ),
        ListTile(
          title: Text('Name'),
        ),
        ListTile(
          title: Text('Name'),
        ),
        ListTile(
          title: Text('Name'),
        ),
      ],
    );
  }
}
