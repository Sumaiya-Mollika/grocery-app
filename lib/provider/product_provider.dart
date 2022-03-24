import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/product_model.dart';
class DummyProduct with ChangeNotifier{
  List<Product>_items=[
 Product(id: 'p1', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),
    Product(id: 'p2', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),
    Product(id: 'p3', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),
    Product(id: 'p4', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),
    Product(id: 'p5', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),
    Product(id: 'p6', name: 'Product Name',price: 120, description: 'Product description', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3SwX529LOk8gikjlCqVSFJ5taynRirQh0qA&usqp=CAU'),

  ];

  List<Product> get items{
    return [..._items];
  }

void addProduct(Product product){
    final newProduct=Product(id: DateTime.now().toString(), name: product.name,price: product.price, description: product.description, imageUrl:product.imageUrl);
    _items.add(newProduct);
    notifyListeners();
}
}