import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            // color: Colors.purple,
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: handler)
        : TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor),
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: handler,
          );
  }
}
