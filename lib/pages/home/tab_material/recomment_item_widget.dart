import 'package:cms_client/pages/home/tab_material/recommend_data.dart';
import 'package:flutter/material.dart';

class RecommentItemWidget extends StatelessWidget {
  final RecommendItem data;
  const RecommentItemWidget(this.data,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Column(
            children: [
              Text(data.title),
              Text(data.subTitle),
            ],
          ),
          Image.asset(data.imgUrl),
          Image(image: Image.asset(data.imgUrl))
        ],
      ),
    );
  }
}