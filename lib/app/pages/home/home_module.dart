import '../../repositories/produts/produts_repository.dart';
import '../../repositories/produts/produts_repository_implement.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class HomeModule {
  HomeModule._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
              create: (context) => ProductsRepositoryImplement(
                    dio: context.read(),
                  ))
        ],
        child: const HomePage(),
      );
}
