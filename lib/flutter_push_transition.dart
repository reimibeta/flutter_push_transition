library flutter_push_transition;

import 'package:flutter/material.dart';
import 'src/page_transition.dart';

class FlutterPushTransition {

  static Future<dynamic> push(BuildContext context, {@required Widget goto,int duration = 200}) {
    var results = Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: duration),
          child: goto,
        )
    );
    return results;
  }

  static Future<dynamic> pushReset(BuildContext context, {@required Widget goto,int duration = 200}){
    var results = Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: duration),
          child: goto,
        ),(Route<dynamic> route) => false
    );
    return results;
  }

  static Future<dynamic> pushReplacement(BuildContext context, {@required Widget goto,int duration = 200}){
    var results = Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: duration),
          child: goto,
        )
    );
    return results;
  }

}
