import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:magazine/models/recommend_model.dart';
import 'package:magazine/widget/common_widget.dart';

class IndexCategoryWidget extends StatelessWidget {
  const IndexCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: _items,
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
          Row(
            children: [Text(widget.title), Icon(Icons.arrow_right)],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Wrap(spacing: 10, runSpacing: 5, children: []),
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

  // List<Widget> get _items {
  //   return widget.model.data!.map((e) {
  //     return Container(
  //       width: 100,
  //       // height: 100,
  //       alignment: Alignment.center,
  //       child: Column(children: [
  //         CachedNetworkImage(
  //             imageUrl:
  //                 'https://img.resource.qikan.cn/markdps/qkimages/hwwz/hwwz202206-m.jpg'),
  //         Text(e.name ?? '')
  //       ]),
  //     );
  //   }).toList();
  // }
}
