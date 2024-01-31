import 'package:movies_list/env/env.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return Env.BaseUrl;
      case Flavor.production:
        return Env.BaseUrl;
    }
  }

  static String get apiKey {
    switch (appFlavor) {
      case Flavor.development:
        return Env.ApiKey;
      case Flavor.production:
        return Env.ApiKey;
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }
}
