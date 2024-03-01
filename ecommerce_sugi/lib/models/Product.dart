import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Product {
  final String image, title, description, price, size, id, color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });

  factory Product.formatJson(Map<String, dynamic> jsonData) {
    return Product(
      id: jsonData['id'],
      image: jsonData['image'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      size: jsonData['size'],
      color: jsonData['color'],
    );
  }
}

Future<List<dynamic>> getData() async {
  final response = await http.get("http://10.0.2.2/product/getdata_sugi.php");
  List items = jsonDecode(response.body);
  return items.map((item) => new Product.formatJson(item)).toList();
}

