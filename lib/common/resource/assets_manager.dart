import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAssets {
  static const String logo = "assets/images/odoo_logo.svg";
  static const String loading = "assets/gifs/loading.zip";
  static const String googleLogo = "assets/images/google_logo.svg";
}

Future<void> preCacheImages(BuildContext context) async {
  const loaderLogo = SvgAssetLoader(ImageAssets.logo);
  svg.cache.putIfAbsent(
    loaderLogo.cacheKey(context),
    () => loaderLogo.loadBytes(context),
  );
  const loaderLoading = SvgAssetLoader(ImageAssets.loading);
  svg.cache.putIfAbsent(
    loaderLoading.cacheKey(context),
    () => loaderLoading.loadBytes(context),
  );
  const loaderGoogle = SvgAssetLoader(ImageAssets.googleLogo);
  svg.cache.putIfAbsent(
    loaderGoogle.cacheKey(context),
    () => loaderGoogle.loadBytes(context),
  );
}
