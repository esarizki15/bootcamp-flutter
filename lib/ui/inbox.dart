import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ini halaman inbox"),
      ),
    );
  }
}
