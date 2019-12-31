import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/AppTabView.dart';
import 'package:flutter_app/views/homePage/Chase.dart';
import 'package:flutter_app/views/homePage/Hot.dart';
import 'package:flutter_app/views/homePage/Live.dart';
import 'package:flutter_app/views/homePage/Movie.dart';
import 'package:flutter_app/views/homePage/Recommend.dart';

//主页模块
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //TODO: 指示器样式：长度、圆角
    return new AppTabView(
        isScrollable: true,
        labelColor: Color.fromRGBO(234, 122, 153, 1),
        labelStyle: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Color.fromRGBO(234, 122, 153, 1),
        indicatorWeight: 3.0,
        unselectedLabelColor: Color.fromRGBO(117, 117, 117, 1),
        children: <AppTabViewItem>[
          new AppTabViewItem(title: new Text('直播'), body: new HomePageLive()),
          new AppTabViewItem(title: new Text('推荐'), body: new HomePageRecommend()),
          new AppTabViewItem(title: new Text('热门'), body: new HomePageHot()),
          new AppTabViewItem(title: new Text('追番'), body: new HomePageChase()),
          new AppTabViewItem(title: new Text('影视'), body: new HomePageMovie()),
        ]);
  }
}
