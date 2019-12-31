import 'package:flutter/cupertino.dart';
import 'package:flutter_app/components/AppTabView.dart';

//影视模块
class HomePageRecommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageRecommendState();
  }
}

class HomePageRecommendState extends State<HomePageRecommend>{
  @override
  Widget build(BuildContext context) {
    return new Text('影视');
  }
}
