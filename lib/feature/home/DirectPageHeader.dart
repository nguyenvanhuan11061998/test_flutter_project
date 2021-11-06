import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/dataBloc/AuthBloc.dart';
import 'package:provider/provider.dart';

class DirectPageHeader extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthBloc>(
      builder: (context, bloc, child) {
        return Material(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 20,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset('assets/icons/ic_back_left.png'),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(bloc.userItem?.asValue?.value?.fullName ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 15)),
                  ),
                  Flexible(child: Container(), flex: 1),
                  InkWell(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Icon(Icons.video_call),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(52);
}
