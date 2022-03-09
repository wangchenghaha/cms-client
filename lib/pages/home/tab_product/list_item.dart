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
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            height: height,
            child: CommonImageWrapper(data['picturePath']),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  data['styleColorCode'],
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 116, 1), fontSize: 16),
                ),
              ),
              CommonTextLine(data['styleColorCode']),
              CommonTextLine(data['categoryGroupName']),
              CommonTextLine(data['colorDetail']),
            ],
          ),
        ],
      ),
    );
  }
}

class CommonTextLine extends StatelessWidget {
  final String title;

  const CommonTextLine(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle =
        TextStyle(fontSize: 12, color: Color.fromRGBO(138, 138, 142, 1));
    return Text(
      title,
      style: _textStyle,
    );
  }
}
