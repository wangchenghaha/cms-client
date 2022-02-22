import 'package:flutter/foundation.dart';

import 'catalog.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalog;

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    _catalog = newCatalog;
    notifyListeners();
  }

  // 已加入购物车的书的id
  final List<int> _cartItems = [];

  // get 方法
  List<Book> get books => _cartItems.map((id) =>  _catalog.getById(id)).toList();

  // 购物车中商品总价
  double get totalPrice => books.fold(0, (previousValue, element) => previousValue + element.price);


  // 商品加入购物车
  void add(Book book){
    _cartItems.add(book.id);
    notifyListeners();
  }

  // 商品移出购物车
  void remove(Book book){
    _cartItems.remove(book.id);
    notifyListeners();
  }
}