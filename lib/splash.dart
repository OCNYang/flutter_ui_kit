import 'package:flutter/material.dart';

import 'other/imgConst.dart' show BG_1;
import 'other/imgConst.dart' show HEAD;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(BG_1),fit: BoxFit.cover),
        color: Colors.amber,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset(
              HEAD,
              width: 100,
            ),
            top: 50,
          )
        ],
      ),
    );
  }
}
