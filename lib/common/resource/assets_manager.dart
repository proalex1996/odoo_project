import 'package:flutter_svg/flutter_svg.dart';

class ImageAssets {
  static const String logo = "assets/images/odoo_logo.svg";
  static const String loading = "assets/gifs/loading.zip";
}

Future<void> preCacheImages() async {
  const loaderLogo = SvgAssetLoader(ImageAssets.logo);
  svg.cache.putIfAbsent(
    loaderLogo.cacheKey(null),
    () => loaderLogo.loadBytes(null),
  );
  const loaderLoading = SvgAssetLoader(ImageAssets.loading);
  svg.cache.putIfAbsent(
    loaderLoading.cacheKey(null),
    () => loaderLoading.loadBytes(null),
  );
}
