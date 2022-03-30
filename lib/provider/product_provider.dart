import 'package:flutter/material.dart';
import 'package:grocery_shop_app/provider/product_model.dart';

class DummyProducts with ChangeNotifier {
  List<Product> _items = [
    Product(
      name: 'Vegetables',
      id: 'p1',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p2',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p3',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p4',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p5',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p6',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p7',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p8',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p9',
    quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p10',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p11',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p12',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p13',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p14',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),
    Product(
      name: 'Vegetables',
      id: 'p15',
      quantity: 2,
      description: 'Fresh Vegetables',
      price: 29.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBlH8Haoq4v7TZfWgJk8SWP5ZTNdE5UR37Q&usqp=CAU',
    ),
    Product(
      name: 'Fruits',
      id: 'p16',
      quantity: 1,
      description: 'Fresh Fruits',
      price:19.99,
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS13_w09fnvGxUixW9GBZ2TlBC4jUOCH7JuvA&usqp=CAU',
    ),

  ];


  List<Product> get items {

    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct(Product product) {
    final newProduct = Product(
        description: product.description,
    name: product.name,
        quantity: product.quantity,
        price: product.price,
        imageUrl: product.imageUrl,
        id: DateTime.now().toString());
    _items.add(newProduct);

    notifyListeners();
  }

  // void updatesProduct(String id, Product newProduct) {
  //   final prodIndex = _items.indexWhere((prod) => prod.id == id);
  //   if (prodIndex >= 0) {
  //     _items[prodIndex] = newProduct;
  //     notifyListeners();
  //   } else {
  //     print('.....!');
  //   }
  // }

  void deleteProduct(String id) {
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }
}