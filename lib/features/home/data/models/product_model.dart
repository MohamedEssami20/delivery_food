import 'package:delivery_food/core/utils/app_assets.dart';

class ProductModel {
  final String image;
  final String title;
  final String price;
  final double ratingCount;
  final int distance;

  ProductModel(
      {required this.image,
      required this.title,
      required this.price,
      required this.ratingCount,
      required this.distance});
  

  static List<ProductModel> burgerProduct = [
    ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Bureger",
        ratingCount: 4.5, 
        distance: 120,
        price: "Rs. 1000",  
    ),
  ];

  static List<ProductModel> pizzaProduct = [
    ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza",
        ratingCount: 4.5, 
        distance: 120,
        price: "Rs. 1000",  
    ),
  ];

  static List<ProductModel> sandwichProduct = [
    ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Sandwich",
        ratingCount: 4.5, 
        distance: 120,
        price: "Rs. 1000",  
    ),
  ];

  static List<ProductModel> juiceProduct = [
    ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Ice Cream",
        ratingCount: 4.5, 
        distance: 120,
        price: "Rs. 1000",  
    ),
  ];
}
