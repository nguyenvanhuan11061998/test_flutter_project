
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/dataBloc/ChatBloc.dart';
import 'package:provider/provider.dart';

import 'DirectPageHeader.dart';
import 'ItemDirect.dart';

class DirectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: DirectPageHeader(),
          body: Consumer<ChatBloc> (
              builder: (context, bloc, child) {
                return Container(
                  child: ListView.builder(
                      itemBuilder: (context, index) => ItemDirect(bloc.conversation.elementAt(index).userModel),
                      itemCount: bloc.conversation.length),
                );
              }
          ),
        ));
  }
}
