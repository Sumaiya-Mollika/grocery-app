import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  bool isFavorite;
  Product({required this.id,required this.name,required this.price,required this.description,required this.imageUrl,this.isFavorite=false});

}