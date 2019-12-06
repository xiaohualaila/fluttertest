import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolTipDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toolTip'),
      ),
      body: Center(
        child: Tooltip(message: "你好我很坏",
            child: Icon(Icons.all_inclusive),),
      ),
    );
  }
}
