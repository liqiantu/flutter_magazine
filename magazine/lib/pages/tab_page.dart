import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magazine/common/global.dart';
import 'package:magazine/dao/dao.dart';
import 'package:magazine/models/recommend_model.dart';
import 'package:magazine/pages/rec_page.dart';
import 'package:magazine/widget/common_widget.dart';
import 'package:magazine/widget/index_widget.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(246, 235, 238, 236),
        body: SafeArea(
            child: Column(
          children: [
            Container(
                child: Row(
              children: [
                TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  labelPadding: EdgeInsets.fromLTRB(20, 0, 10, 5),
                  controller: _tabController,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: MAIN_COLOR, width: 3),
                      insets: EdgeInsets.only(bottom: 10)),
                  tabs: _tabs,
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )),
            Flexible(
                child: TabBarView(
              children: [
                RecPage(),
                RecPage(),
                RecPage(),
                RecPage(),
                RecPage(),
              ],
              controller: _tabController,
            ))
          ],
        )));
  }

  List<Tab> get _tabs {
    return [
      RecommendTabModel(title: '??????', id: 1),
      RecommendTabModel(title: '??????', id: 2),
      RecommendTabModel(title: '??????', id: 3),
      RecommendTabModel(title: '??????', id: 5),
      RecommendTabModel(title: '??????', id: 7),
    ]
        .map((e) => Tab(
              text: e.title,
            ))
        .toList();
  }
}
