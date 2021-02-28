import 'package:flutter/material.dart';
class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  const DraftPage({Key key, this.backgroundColor, this.body}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: body,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Demo MultiBloc in Multipage app'),
      ),
    );
  }
}
