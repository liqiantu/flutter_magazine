import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TapWrap extends StatelessWidget {
  const TapWrap({Key? key, required this.child, required this.tapAct})
      : super(key: key);

  final Widget child;
  final void Function() tapAct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: this.child,
      onTap: this.tapAct,
    );
  }
}
