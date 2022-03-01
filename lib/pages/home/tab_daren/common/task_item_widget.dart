import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(242, 240, 255, 1), //rgb(242, 240, 255) 100%
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2022-02-25',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '￥60',
                style: TextStyle(color: Colors.orangeAccent),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 72,
                  height: 96,
                  child: Image.asset(
                    'static/images/listItem.png',
                    fit: BoxFit.cover,
                  )),
              Padding(padding: EdgeInsets.only(left: 10)),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '图片需要3张、视频一个',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '交付日期：2022-03-01',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: const Color.fromRGBO(157, 119, 255, 1),
                ),
                child: Text(
                  '领取任务',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
