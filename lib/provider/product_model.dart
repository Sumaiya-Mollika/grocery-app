import 'package:flutter/material.dart';

class Product with ChangeNotifier{
  int quantity;
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  double prePrice;
  bool isFavorite;
  Product({required this.quantity,required this.id,required this.name,required this.price,
    required this.description,required this.imageUrl,this.prePrice=1800.0,this.isFavorite=false});

  void toggleFavoriteStatus(){
    isFavorite=!isFavorite;
  }

}