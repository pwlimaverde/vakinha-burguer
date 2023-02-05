import 'dart:developer';

import 'package:dio/dio.dart';
import '../../models/product_model.dart';
import 'produts_repository.dart';

import '../../core/execeptions/repository_exeception.dart';
import '../../core/rest_client/custom_dio.dart';

class ProductsRepositoryImplement implements ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImplement({required this.dio});

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get("/products");
      return result.data
          .map<ProductModel>(
            (product) => ProductModel.fromMap(product),
          )
          .toList();
    } on DioError catch (e, s) {
      log("Erro ao buscar produtos", error: e, stackTrace: s);
      throw RepositoryExeception(message: "Erro ao buscar produtos");
    }
  }
}
