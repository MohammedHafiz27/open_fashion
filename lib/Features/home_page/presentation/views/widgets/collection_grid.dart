
import 'package:flutter/material.dart';
import 'package:open_fashion/Features/home_page/data/models/collection_model.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/collection_item.dart';

class CollectionGrid extends StatelessWidget {
  const CollectionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CollectionModel.collectionItems.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CollectionItem(collectionModel: CollectionModel.collectionItems[index]),
        ),
      ),
    );
  }
}
