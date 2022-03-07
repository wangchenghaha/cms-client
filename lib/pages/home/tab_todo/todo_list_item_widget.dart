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
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    const Icon(IconData(0xe706, fontFamily: 'Myfont'),
                        color: Colors.white, size: 18),
                    Text(
                      data['productStepNameCn'],
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              )),
          Positioned(
            right: 20,
            top: 10,
            bottom: 10,
            child: Center(
              child: Text(
                "${data['number']}",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
