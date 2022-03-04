import 'package:flutter/material.dart';
import 'package:cms_client/models/cart.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 待优化
    var cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('购物车'),
        elevation: 0
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                    title: Text(cart.books[index].name),
                    subtitle: Text("￥${cart.books[index].price.toString()}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove,color: Colors.red,),
                      onPressed: () {
                        cart.remove(cart.books[index]);
                      },
                    )),
                itemCount: cart.books.length),
          ),
          const Divider(
            height: 1,
          ),
          Consumer<CartModel>(
            builder: (context, cart, child) => Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "￥${cart.totalPrice.toString()}",
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ),
          )
        ],
      ),
    );
  }
}
