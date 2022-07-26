class ProductConfig {
  static final instance = ProductConfig._("saasd");

  final String apiKey;

  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return instance;
  }

  ProductLazySingleton._init();
}
