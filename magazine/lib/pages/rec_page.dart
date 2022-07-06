import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magazine/models/recommend_model.dart';
import 'package:magazine/dao/dao.dart';
import 'package:magazine/widget/index_content_widget.dart';

class RecPage extends StatefulWidget {
  const RecPage({Key? key}) : super(key: key);

  @override
  State<RecPage> createState() => _RecPageState();
}

class _RecPageState extends State<RecPage> with AutomaticKeepAliveClientMixin {
  List<dynamic> models = [];

  @override
  void initState() {
    _request();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IndexContentWidge();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  _request() {
    Dao().getRecAll().then((value) {
      print(value);
    });
  }
}
