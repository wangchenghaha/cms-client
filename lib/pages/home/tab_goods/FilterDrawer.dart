import 'package:cms/widgets/common_picker.dart';
import 'package:flutter/material.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({Key? key}) : super(key: key);

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  var productCodeController = TextEditingController();
  var modelNameController = TextEditingController();
  var batchController = TextEditingController();
  int roomType = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                DrawerTitle(
                  title: '商品编号',
                ),
                DrawerInput(
                    hitText: "请输入9或12位商品编码", controller: productCodeController),
                DrawerTitle(
                  title: '款名',
                ),
                DrawerInput(
                    hitText: "请输入9或12位商品编码", controller: modelNameController),
                DrawerTitle(
                  title: '品牌',
                ),
                DrawerSelect(
                  value: roomType,
                  onChange: (val) {
                    setState(() {
                      roomType = val;
                    });
                  },
                  options: ['ONLY', 'VERO MODA', 'JACK JONES', 'SELECTED'],
                ),
                DrawerTitle(
                  title: '批次号',
                ),
                DrawerInput(
                    hitText: "请输入9或12位商品编码", controller: batchController),
                DrawerTitle(
                  title: '品类组',
                ),
                DrawerSelect(
                  value: roomType,
                  onChange: (val) {
                    setState(() {
                      roomType = val;
                    });
                  },
                  options: ['组一', '组二', '组三', '组四'],
                ),
                DrawerTitle(
                  title: '品类组',
                ),
                DrawerSelect(
                  value: roomType,
                  onChange: (val) {
                    setState(() {
                      roomType = val;
                    });
                  },
                  options: ['组一', '组二', '组三', '组四'],
                ),
                DrawerTitle(
                  title: '年',
                ),
                DrawerSelect(
                  value: roomType,
                  onChange: (val) {
                    setState(() {
                      roomType = val;
                    });
                  },
                  options: ['2022', '2021', '2020', '2019'],
                ),
                DrawerTitle(
                  title: '季',
                ),
                DrawerSelect(
                  value: roomType,
                  onChange: (val) {
                    setState(() {
                      roomType = val;
                    });
                  },
                  options: ['1', '2', '3', '4'],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DrawerButton(
                    label: '重置',
                    onTap: () {},
                  ),
                  DrawerButton(
                    label: '确定',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class DrawerTitle extends StatelessWidget {
  final String title;

  TextStyle commonTextStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18);

  DrawerTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title, style: commonTextStyle),
    );
  }
}

class DrawerInput extends StatelessWidget {
  final String hitText;
  final TextEditingController controller;

  const DrawerInput({Key? key, required this.hitText, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextField(
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none, hintText: hitText, fillColor: Colors.green),
    ));
  }
}

class DrawerSelect extends StatelessWidget {
  final int value;
  final List<String> options;
  final Function(int) onChange;

  const DrawerSelect(
      {Key? key,
      required this.value,
      required this.options,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          var result = CommonPicker.showPicker(
              context: context, options: options, value: value);
          result.then((selectedValue) {
            if (value != selectedValue &&
                selectedValue != null &&
                onChange != null) {
              onChange(selectedValue);
            }
          }); //回调函数
        },
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(options[value], style: TextStyle(fontSize: 16.0)),
            ],
          ),
        ));
  }
}

class DrawerButton extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color fontColor;
  final Function onTap;

  const DrawerButton(
      {Key? key,
      required this.label,
      this.bgColor = Colors.white,
      this.fontColor = Colors.black,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border:
            Border.all(width: 1, color: const Color.fromRGBO(157, 119, 255, 1)),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: fontColor,
          ),
        ),
      ),
    ));
  }
}
