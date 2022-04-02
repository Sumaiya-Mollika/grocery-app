import 'package:flutter/foundation.dart';
class CartItem{
 final int quantity;
  final String ?id;
  final String name;
 String ?imageUrl;
  final double price;
  CartItem({required this.id,required this.name,required this.price,required this.quantity,this.imageUrl});
}

class Cart with ChangeNotifier{
  Map<String, CartItem>_items={};
  Map<String,CartItem> get items{
    return {..._items};
  }

  int get itemCount{
    return _items.length;
  }

  void addItem(String productId, double price, String name){
    if(_items.containsKey(productId)){
    _items.update(productId, (exittingItem) => CartItem(id: exittingItem.id, name:exittingItem.name, price: exittingItem.price, quantity:exittingItem.quantity+1, imageUrl: exittingItem.imageUrl));
    }
    else{
      _items.putIfAbsent(productId, () => CartItem(id: DateTime.now().toString(), name: name, price: price, quantity:1, imageUrl:' imageUrl'));
    }
    notifyListeners();
    }
  void removeItem(String? productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void removeSingleItem(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
          productId,
              (existingCartItem) => CartItem(
              id: existingCartItem.id,
              price: existingCartItem.price,
              quantity: existingCartItem.quantity - 1,
              name: existingCartItem.name));
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }
  // void clearCart() {
  //   _items = {};
  //   notifyListeners();
  // }
  }
