import 'package:cms_client/pages/home/tab_material/recommend_data.dart';
import 'package:cms_client/pages/home/tab_material/recomment_item_widget.dart';
import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  final List<RecommendItem> dataList;
  const Recommend({Key? key, this.dataList = recommendData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: const BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              Text('更多')
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
            runSpacing: 10.0,
            spacing: 10.0,
            children: dataList.map((e) => RecommentItemWidget(e)).toList(),
          )
        ],
      ),
    );
  }
}