import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatefulWidget {
  @override
  BottomNavigationItemState createState() => BottomNavigationItemState();

  final Tuple2<String, String> icons;
  final bool isSelected;
  final VoidCallback onItemClick;

  BottomNavigationItem(this.icons, this.isSelected, this.onItemClick);
}

class BottomNavigationItemState extends State<BottomNavigationItem> {
  @override
  Widget build(BuildContext context) {
    // InkResponse: widget tạo hiệu ứng gợn sóng khi chạm vào
    return InkResponse(
        child: Container(
          child: widget.isSelected
              ? SvgPicture.asset(
                  widget.icons.item2,
                  height: 24,
                )
              : SvgPicture.asset(
                  widget.icons.item1,
                  height: 24,
                ),
        ),
        onTap: widget.onItemClick);
  }
}
