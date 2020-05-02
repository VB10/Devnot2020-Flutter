import 'package:devnot/core/widget/base_state.dart';
import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends BaseState<HelloView> {
  List<String> devnotList = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 10; i++) {
      devnotList.add(i.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: devnotList.length,
      itemBuilder: (context, index) => buildCard(index),
    );
  }

  Widget buildCard(int index) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.blue,
      ),
      secondaryBackground: Container(
        color: Colors.green,
      ),
      child: buildCardDismiss(index),
    );
  }

  Card buildCardDismiss(int index) {
    return Card(
      elevation: 20,
      child: buildListTile(index),
    );
  }

  ListTile buildListTile(int index) {
    return ListTile(
      leading: buildContainerLeft(),
      trailing: buildFlutterLogo(),
      title: buildTextTitle(index),
    );
  }

  FlutterLogo buildFlutterLogo() => FlutterLogo();

  Text buildTextTitle(int index) => Text(devnotList[index]);

  Container buildContainerLeft() {
    return Container(
      width: dynamicWidth(0.02),
      color: Colors.red,
    );
  }

  AppBar buildAppBar() => AppBar();
}
