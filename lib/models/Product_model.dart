class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });
  factory ProductModel.fromJason(jasodata) {
    return ProductModel(
        id: jasodata['id'],
        title: jasodata['title'],
        price: jasodata['price'],
        description: jasodata['description'],
        category: jasodata['category'],
        image: jasodata['image']);
  }
}
