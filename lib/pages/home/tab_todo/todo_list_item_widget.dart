import 'package:flutter/material.dart';
class TodoListItemWidget extends StatelessWidget {
  final data;
  const TodoListItemWidget(this.data, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(0, 198, 173, 1) //#00c5ad
          ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      // margin: ,
      height: 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(IconData(0xe706, fontFamily: 'Myfont'),
                  color: Colors.white, size: 18),
              Text(
                data['productStepNameCn'],
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            // margin: const EdgeInsets.only(top: -10),
            children: [
              Text(
                "${data['number']}",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
