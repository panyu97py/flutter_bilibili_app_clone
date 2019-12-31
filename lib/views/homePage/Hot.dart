import 'package:flutter/cupertino.dart';
import 'package:flutter_app/components/AppTabView.dart';

//热门模块
class HomePageHot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageHotState();
  }
}

class HomePageHotState extends State<HomePageHot> {
  @override
  Widget build(BuildContext context) {
    return new Text('热门');
  }
}
