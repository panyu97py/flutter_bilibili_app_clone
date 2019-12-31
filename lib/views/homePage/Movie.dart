import 'package:flutter/cupertino.dart';
import 'package:flutter_app/components/AppTabView.dart';

//影视模块
class HomePageMovie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageMovieState();
  }
}

class HomePageMovieState extends State<HomePageMovie>{
  @override
  Widget build(BuildContext context) {
    return new Text('影视');
  }
}
