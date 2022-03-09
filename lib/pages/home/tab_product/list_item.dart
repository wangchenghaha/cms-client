import 'package:cms_client/widgets/commom_image_wraper.dart';
import 'package:flutter/material.dart';

class GoodsListItem extends StatelessWidget {
  final data;

  const GoodsListItem(this.data, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 50) / 2;
    var height = (MediaQuery.of(context).size.width - 50) / 2;

    return Container(
      width: width,
      child: Column(
        children: [
          Container(
            height: height,
            child: CommonImageWrapper(data['picturePath']),
          ),
          Text(data['styleColorCode']),
          Text(data['styleName']),
          Text(data['categoryGroupName']),
          Text(data['colorDetail']),
        ],
      ),
    );
  }
}