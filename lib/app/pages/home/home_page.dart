import '../../models/product_model.dart';
import 'package:flutter/material.dart';

import '../../core/ui/widgets/delivery_appbar.dart';
import 'widgets/delivery_product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: "teste lanche",
                    description: "lanche",
                    price: 1,
                    image:
                        "https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800",
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
