import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/model/UserItem.dart';

class ItemDirect extends StatelessWidget {
  UserItem userItem;

  ItemDirect(this.userItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Row(
        children: [
          CircleAvatar(
              backgroundImage: AssetImage('assets/sample/ic_avatar_1.jpg'),
              radius: 16),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userItem.username,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 12),
                ),
                Text(
                  userItem.fullName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 9),
                )
              ],
            ),
          ),
          Flexible(child: Container(), flex: 1,),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call))
        ],
      ),
    );
  }
}
