import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1,102 likes",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 10)),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "dangngocduc",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "how to rear mount pec dec instal slideshow. Note: the hite-rite v1 dropper post makes for a great linkage point for extra strap when overloading 🚚 :: fabs chest pre order june 1st :::..",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 13),
                ),
              ]),
            ),
            Text('View all 4 comment', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
