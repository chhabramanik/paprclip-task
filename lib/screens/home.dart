import 'package:flutter/material.dart';
import 'package:paprclip_task/animations/fade_animation.dart';
import 'package:paprclip_task/widgets/menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaprClip Task'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false,
                pageBuilder: (BuildContext context, _, __) =>
                    FadeAnimation(1.5, MenuPop()), // FadeAnimation opening the box over 1.5sec with fade in animation
              ),
            );
          },
          child: Text("Options"),
        ),
      ),
    );
  }
}
