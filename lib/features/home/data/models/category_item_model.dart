import '../../../../core/utils/app_assets.dart';

class CategoryItemModel {
  final String title;
  final String image;

  CategoryItemModel({required this.title, required this.image});

  static List<CategoryItemModel> categories = [
    CategoryItemModel(title: 'Burger', image: Assets.assetsImagesBurger),
    CategoryItemModel(title: 'Sandwitch', image: Assets.assetsImagesSandwich),
    CategoryItemModel(title: 'Juice', image: Assets.assetsImagesJuice),
    CategoryItemModel(title: 'Pizza', image: Assets.assetsImagesPizza),
    CategoryItemModel(title: 'Burger', image: Assets.assetsImagesBurger),
    CategoryItemModel(title: 'Sandwitch', image: Assets.assetsImagesSandwich),
    CategoryItemModel(title: 'Juice', image: Assets.assetsImagesJuice),
    CategoryItemModel(title: 'Pizza', image: Assets.assetsImagesPizza),
  ];
}
