// ignore: file_names
// ignore_for_file: camel_case_types, file_names

class productmodel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel ratingModel;

  productmodel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.ratingModel,
  });

  factory productmodel.fromJason(jasonData) {
    return productmodel(
      id: jasonData['id'],
      title: jasonData['title'],
      price: jasonData['price'],
      description: jasonData['description'],
      category: jasonData['category'],
      image: jasonData['image'],
      ratingModel: RatingModel.fromJason(jasonData['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJason(jasonData) {
    return RatingModel(rate: jasonData['rate'], count: jasonData['count']);
  }
}
