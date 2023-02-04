import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Page"),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            label: Env.instace["backend_base_url"] ?? "",
            width: 200,
            height: 200,
            onPressed: () {},
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "text"),
          )
        ],
      ),
    );
  }
}
