import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final List<Color> colors;

  Product({
    this.colors,
    this.image,
    this.title,
    this.description,
    this.price,
    this.size,
    this.id,
  });
}

List products = [
  Product(
      id: 1,
      title: 'Acer',
      price: 1150,
      size: 17,
      description: commonDescription,
      image: "assets/images/n1_acer.png",
      colors: [Colors.red[400]]),
  Product(
      id: 2,
      title: 'Apple',
      price: 3240,
      size: 16,
      description: commonDescription,
      image: "assets/images/n2_apple.png",
      colors: [Colors.grey[400]]),
  Product(
      id: 3,
      title: 'Lenovo',
      price: 730,
      size: 15,
      description: commonDescription,
      image: "assets/images/n3_lenovo.png",
      colors: [Color(0xff3776A6)]),
  Product(
      id: 4,
      title: 'MSI',
      price: 950,
      size: 15,
      description: commonDescription,
      image: "assets/images/n4_msi.png",
      colors: [Colors.indigo[200]]),
  Product(
      id: 5,
      title: 'HP',
      price: 900,
      size: 15,
      description: commonDescription,
      image: "assets/images/n5_hp.png",
      colors: [Colors.brown[300]]),
  Product(
      id: 6,
      title: 'Dell',
      price: 1050,
      size: 15,
      description: commonDescription,
      image: "assets/images/n6_dell.png",
      colors: [Colors.lime[400]]),
];

List spareColors = [
  Colors.greenAccent,
  Colors.blueGrey[800],
];

final String commonDescription = 'This product is tested and certified to work properly. '
    'The product will have significant blemishes and/or significant scratches, '
    'dents, or frame damage. The testing process includes functionality testing, '
    'basic cleaning, inspection, and repackaging. The product ships with all relevant '
    'accessories, and arrive in a generic box.';
