import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:magazine/common/global.dart';
import 'package:magazine/models/recommend_model.dart';
import 'package:magazine/pages/category_page.dart';
import 'package:magazine/widget/common_widget.dart';

class IndexCategoryWidget extends StatelessWidget {
  const IndexCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: _categorys.map((e) {
          return Expanded(
            child: TapWrap(
              child: Container(
                decoration: BoxDecoration(
                  color: MAIN_COLOR,
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [Icon(Icons.category), Text(e)],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              tapAct: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CategoryPage(),
                ));
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  List<String> get _categorys {
    return ['分类', '每日推荐', '新书上架', '排行榜'];
  }

  List<Widget> get _items {
    return _categorys.map((e) {
      return Expanded(
          child: Container(
        color: Colors.amber,
        margin: EdgeInsets.all(15),
        child: Column(
          children: [Icon(Icons.category), Text(e)],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ));
    }).toList();
  }
}

class IndexSectionWidge extends StatefulWidget {
  final String title;

  const IndexSectionWidge({Key? key, required this.title}) : super(key: key);

  @override
  State<IndexSectionWidge> createState() => _IndexSectionWidgeState();
}

class _IndexSectionWidgeState extends State<IndexSectionWidge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_right)
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              )),
          Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            // color: Colors.red,
            child: Wrap(
              spacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 5,
              children: _items,
              alignment: WrapAlignment.start,
            ),
          ),
          TapWrap(
              child: Container(
                alignment: Alignment.center,
                child: Text('换一批'),
              ),
              tapAct: () {
                print('tap');
              })
        ],
      ),
    );
  }

  List<Widget> get _items {
    return List.generate(8, (index) {
      return Container(
        width: window.physicalSize.width / window.devicePixelRatio / 3 - 50,
        // width: 100,
        // height: 100,
        alignment: Alignment.center,
        child: Column(children: [
          CachedNetworkImage(
              imageUrl:
                  'https://img.resource.qikan.cn/markdps/qkimages/hwwz/hwwz202206-m.jpg'),
          Text('${index}')
        ]),
      );
    }).toList();
  }
}
