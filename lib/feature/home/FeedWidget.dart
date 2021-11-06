import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BodyInfo.dart';
import 'FooterWidget.dart';
import 'HeaderInfo.dart';
import 'InfoWidget.dart';

class FeedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            HeaderInfo(),
            BodyInfo(),
            FooterWidget(),
            InfoWidget()
          ],
        ),
      ),
    );
  }

}