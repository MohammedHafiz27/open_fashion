import 'package:open_fashion/Core/utils/app_assets.dart';

class CollectionModel {
  final String image, title;

  CollectionModel({required this.image, required this.title});

  static final List<CollectionModel> collectionItems = [
    CollectionModel(image: AppAssets.productsCover3, title: "HAE BY HAEKIM"),
    CollectionModel(image: AppAssets.productsCover2, title: "Black collection"),
  ];
}
