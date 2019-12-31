import 'package:flutter/cupertino.dart';
import 'package:flutter_app/components/AppTabView.dart';

//热门模块
class HomePageLive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageLiveState();
  }
}

class HomePageLiveState extends State<HomePageLive> {
  @override
  Widget build(BuildContext context) {
    return new Text('直播');
  }
}
