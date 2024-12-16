import 'package:delivery_food/core/utils/app_assets.dart';

class CreditCardItemModel {
  final String title;
  final String subTitle;
  final String image;

  CreditCardItemModel({required this.title, required this.subTitle, required this.image});
  
  static List<CreditCardItemModel> creditCardItemModelList = [
    CreditCardItemModel(title: "MasterCard", subTitle: "**** **** **** 1234", image: Assets.assetsImagesMastercard),
    CreditCardItemModel(title: "PayPal", subTitle: "**** **** **** 1234", image: Assets.assetsImagesPaypal),
    CreditCardItemModel(title: "Apple Pay", subTitle: "**** **** **** 1234", image: Assets.assetsImagesApplePay),
  ];
}
