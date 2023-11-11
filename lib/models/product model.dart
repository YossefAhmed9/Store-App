class ProductModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  //final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    //required this.rating,
  });

  factory ProductModel.fromJson(dynamic data) {
    return ProductModel(
      id: data['id'],
      title: data['title'],
      price: data['price'],
      description: data['description'],
      image: data['image'],
      //rating: RatingModel.fromJson(data['rating'])
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(dynamic data) {
    return RatingModel(
        rate: data['rating']['rate'], count: data['rating']['count']);
  }
}
