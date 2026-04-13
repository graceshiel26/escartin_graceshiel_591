import 'package:modelhandling/model/product_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class ProductController {
  final supabase = Supabase.instance.client;
  // Get all users
  Future<List<Product>> getProduct() async {
    final data = await supabase.from('products').select();
    return data.map((item) => Product.fromMap(item)).toList();
  }

  // Add user
  Future<void> addProduct(Product product) async {
    await supabase.from('products').insert(product.toMap());
  }

  // Delete user
  Future<void> deleteProduct(int id) async {
    await supabase.from('products').delete().eq('id', id);
  }
    //Calculate Grand Total
double calculateGrandTotal(List <Product> products){
  double total = 0;
  for (var product in products){
    total += product.price * product.quantity;
  }
  return total;
}
//Total Items
int countTotalItems(List<Product> products){
  int count = 0;
  for (var product in products){
    count += product.quantity;
  }
  return count;
}
}