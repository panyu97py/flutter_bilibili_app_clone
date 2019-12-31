import 'package:flutter/material.dart';

class AppTabView extends StatefulWidget {
  //构造函数
  const AppTabView(
      {Key key,
      @required this.children,
      this.isScrollable,
      this.onSwitch,
      this.indicatorColor,
      this.indicator,
      this.labelColor,
      this.labelStyle,
      this.unselectedLabelColor,
      this.indicatorSize,
      this.indicatorPadding = EdgeInsets.zero,
      this.indicatorWeight = 2.0,
      this.unselectedLabelStyle})
      : assert(isScrollable != null),
        super(key: key);

  //子类
  final List<AppTabViewItem> children;

  //label 是否支持滚动
  final bool isScrollable;

  //切换事件
  final Function onSwitch;

  //指示器颜色
  final Color indicatorColor;

  //指示器decoration，例如边框等
  final Decoration indicator;

  //选中Tab文字颜色
  final Color labelColor;

  //选中文字样式
  final TextStyle labelStyle;

  //未选中文字颜色
  final Color unselectedLabelColor;

  //未选中文字样式
  final TextStyle unselectedLabelStyle;

  //指示器大小计算方式
  final TabBarIndicatorSize indicatorSize;

  // 指示器厚度
  final double indicatorWeight;

  //底部指示器的Padding
  final EdgeInsetsGeometry indicatorPadding;

  @override
  State<StatefulWidget> createState() {
    return AppTabViewState();
  }
}

class AppTabViewState extends State<AppTabView>
    with SingleTickerProviderStateMixin {
  List<Widget> _tabBarList = [];
  List<Widget> _tabBarViewList = [];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    widget.children.forEach((child) {
      _tabBarList.add(child.getTitle());
      _tabBarViewList.add(child.getBody());
    });
    _tabController = new TabController(
        vsync: this, length: _tabBarList.length); // 和下面的 TabBar.tabs 数量对应
    _tabController.addListener(() {
      if (widget.onSwitch != null) {
        widget.onSwitch(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          bottom: new TabBar(
              tabs: _tabBarList,
              isScrollable: widget.isScrollable,
              indicatorColor: widget.indicatorColor,
              indicator: widget.indicator,
              labelColor: widget.labelColor,
              labelStyle: widget.labelStyle,
              unselectedLabelColor: widget.unselectedLabelColor,
              unselectedLabelStyle: widget.unselectedLabelStyle,
              indicatorSize: widget.indicatorSize,
              indicatorPadding: widget.indicatorPadding,
              indicatorWeight: widget.indicatorWeight,
              controller: _tabController)),
      body: TabBarView(controller: _tabController, children: _tabBarViewList),
    );
  }
}

class AppTabViewItem {
  Widget title;
  Widget body;

  AppTabViewItem({@required this.title, @required this.body});

  Widget getTitle() {
    return this.title;
  }

  Widget getBody() {
    return this.body;
  }
}
