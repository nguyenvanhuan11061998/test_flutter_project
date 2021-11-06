import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(top: Divider.createBorderSide(context))),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/sample/ic_avatar_1.jpg'),
                radius: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dang ngoc duc",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black, fontSize: 10),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              Text("Ha Noi, Viet Nam",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black, fontSize: 10),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis)
            ],
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
          IconButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return Dialog(
                child: ListView(
                  padding: EdgeInsets.all(16),
                  // shrinkWrap: thu gọn view listView chỉ bằng kích thước con bên trong
                  shrinkWrap: true,
                  children: [
                    'Report...', 'Turn on Post notification', 'Copy Link', 'Share to...', 'Mute'
                  ].map((e) => InkWell(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(e),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )).toList(),
                ),
              );
            });
          }, icon: Icon(Icons.more_vert))
        ],
      ),
    );
  }
}
