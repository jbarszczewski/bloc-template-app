enum Flavor {
  development,
  staging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Block Template (dev)';
      case Flavor.staging:
        return 'Banana App (staging)';
      case Flavor.production:
        return 'Banana App';
      default:
        return 'title';
    }
  }

}
