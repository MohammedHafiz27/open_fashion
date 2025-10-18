import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_page/data/models/collection_model.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({super.key, required this.collectionModel});
  final CollectionModel collectionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 300, child: Image.asset(collectionModel.image, fit: BoxFit.cover)),
        Text(collectionModel.title.toUpperCase(), style: AppStyles.bodyLarge(context)),
      ],
    );
  }
}
