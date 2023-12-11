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
        return 'https://api.themoviedb.org/3/discover';
      case Flavor.production:
        return 'https://api.themoviedb.org/3/discover';
    }
  }

  static String get apiKey {
    switch (appFlavor) {
      case Flavor.development:
        return Env.KEY1;
      case Flavor.production:
        return Env.KEY1;
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
