import 'package:flutter/material.dart';

import 'other/imgConst.dart' show IMG_BG;
import 'other/imgConst.dart' show IMG_HEAD;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(IMG_BG),fit: BoxFit.cover),
        color: Colors.amber,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset(
              IMG_HEAD,
              width: 100,
            ),
            top: 50,
          )
        ],
      ),
    );
  }
}
