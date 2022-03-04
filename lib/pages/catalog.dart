import 'package:flutter/material.dart';
import 'package:cms_client/models/cart.dart';
import 'package:cms_client/models/catalog.dart';
import 'package:provider/provider.dart';
import 'package:cms_client/router.dart'; 


class _AddButton extends StatelessWidget {
  final Book book;
  const _AddButton(this.book);

  @override
  Widget build(BuildContext context) {
    var isInCart = context.select<CartModel, bool>((cart) {
      return cart.books.contains(book);
    });
    return TextButton(
      onPressed: () => {
            if (isInCart)
              {context.read<CartModel>().remove(book)}
            else
              {context.read<CartModel>().add(book)}
          },
      child: isInCart
          ? const Icon(Icons.check)
          : const Icon(
              Icons.add_shopping_cart,
              color: Colors.orangeAccent,
            ));
  }
}

class _ListItems extends StatelessWidget {
  final int index;
  const _ListItems(this.index);

  @override
  Widget build(BuildContext context) {
    Book book = context.select<CatalogModel, Book>((value) => value.getByPosition(index));

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(book.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: 90,
                child: Text(
                  '￥${book.price.toString()}',
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            children: [Expanded(child: Text(book.info)), _AddButton(book)],
          )
        ],
      ),
    );
  }
}

class CataLog extends StatelessWidget {
  const CataLog({Key? key}) : super(key: key);

  // buildItem(int index) {
  //   return Text(index.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品列表'),
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.cart),
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return _ListItems(index);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 1,
              color: Colors.black26,
            );
          },
          itemCount: CatalogModel.books.length),
    );
  }
}
