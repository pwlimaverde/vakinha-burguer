import 'package:dw9_delivery_app/app/core/ui/helpers/messages_mixin.dart';

import '../../core/ui/helpers/loader_mixin.dart';
import '../../models/product_model.dart';
import 'package:flutter/material.dart';

import '../../core/ui/widgets/delivery_appbar.dart';
import 'widgets/delivery_product_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with LoaderMixin, MessagesMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(const Duration(seconds: 2));
        hideLoader();
        showError("teste erro");
        await Future.delayed(const Duration(seconds: 2));
        showInfo("teste erro");
        await Future.delayed(const Duration(seconds: 2));
        showSuccess("teste erro");
      }),
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
