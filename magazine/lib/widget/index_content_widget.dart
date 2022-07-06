import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magazine/models/recommend_model.dart';
import 'package:magazine/widget/index_widget.dart';

class IndexContentWidge extends StatefulWidget {
  const IndexContentWidge({Key? key}) : super(key: key);

  @override
  State<IndexContentWidge> createState() => _IndexContentWidgeState();
}

class _IndexContentWidgeState extends State<IndexContentWidge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.red,
          child: IndexCategoryWidget(),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return IndexSectionWidge(
                title: '精品期刊',
              );
            }
            if (index == 1) {
              return IndexSectionWidge(
                title: '版权图书',
              );
            }
            if (index == 2) {
              return IndexSectionWidge(
                title: '热听音频',
              );
            }
            return IndexSectionWidge(
              title: '报纸',
            );
          },
        ))
      ],
    );
  }
}
