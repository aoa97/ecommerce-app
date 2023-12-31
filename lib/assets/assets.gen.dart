/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app-icon-dev.png
  AssetGenImage get appIconDev =>
      const AssetGenImage('assets/icons/app-icon-dev.png');

  /// File path: assets/icons/app-icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/icons/app-icon.png');

  /// File path: assets/icons/back-rtl.svg
  SvgGenImage get backRtl => const SvgGenImage('assets/icons/back-rtl.svg');

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/bag-filled.svg
  SvgGenImage get bagFilled => const SvgGenImage('assets/icons/bag-filled.svg');

  /// File path: assets/icons/bag-light.svg
  SvgGenImage get bagLight => const SvgGenImage('assets/icons/bag-light.svg');

  /// File path: assets/icons/bag.svg
  SvgGenImage get bag => const SvgGenImage('assets/icons/bag.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/icons/facebook.svg');

  /// File path: assets/icons/favorite-filled.svg
  SvgGenImage get favoriteFilled =>
      const SvgGenImage('assets/icons/favorite-filled.svg');

  /// File path: assets/icons/favorite.svg
  SvgGenImage get favorite => const SvgGenImage('assets/icons/favorite.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/heart-filled.svg
  SvgGenImage get heartFilled =>
      const SvgGenImage('assets/icons/heart-filled.svg');

  /// File path: assets/icons/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icons/heart.svg');

  /// File path: assets/icons/home-filled.svg
  SvgGenImage get homeFilled =>
      const SvgGenImage('assets/icons/home-filled.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/logo-12.png
  AssetGenImage get logo12 => const AssetGenImage('assets/icons/logo-12.png');

  /// File path: assets/icons/logo-text.svg
  SvgGenImage get logoText => const SvgGenImage('assets/icons/logo-text.svg');

  /// File path: assets/icons/logo.png
  AssetGenImage get logoPng => const AssetGenImage('assets/icons/logo.png');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logoSvg => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/minus.svg
  SvgGenImage get minus => const SvgGenImage('assets/icons/minus.svg');

  /// File path: assets/icons/person-filled.svg
  SvgGenImage get personFilled =>
      const SvgGenImage('assets/icons/person-filled.svg');

  /// File path: assets/icons/person.svg
  SvgGenImage get person => const SvgGenImage('assets/icons/person.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/share.svg
  SvgGenImage get share => const SvgGenImage('assets/icons/share.svg');

  /// File path: assets/icons/shop-filled.svg
  SvgGenImage get shopFilled =>
      const SvgGenImage('assets/icons/shop-filled.svg');

  /// File path: assets/icons/shop.svg
  SvgGenImage get shop => const SvgGenImage('assets/icons/shop.svg');

  /// File path: assets/icons/star-filled.svg
  SvgGenImage get starFilled =>
      const SvgGenImage('assets/icons/star-filled.svg');

  /// File path: assets/icons/star-halfed.svg
  SvgGenImage get starHalfed =>
      const SvgGenImage('assets/icons/star-halfed.svg');

  /// File path: assets/icons/star.svg
  SvgGenImage get star => const SvgGenImage('assets/icons/star.svg');

  /// List of all assets
  List<dynamic> get values => [
        appIconDev,
        appIcon,
        backRtl,
        back,
        bagFilled,
        bagLight,
        bag,
        close,
        facebook,
        favoriteFilled,
        favorite,
        google,
        heartFilled,
        heart,
        homeFilled,
        home,
        logo12,
        logoText,
        logoPng,
        logoSvg,
        minus,
        personFilled,
        person,
        plus,
        share,
        shopFilled,
        shop,
        starFilled,
        starHalfed,
        star
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [splash];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loader-one.json
  LottieGenImage get loaderOne =>
      const LottieGenImage('assets/lottie/loader-one.json');

  /// File path: assets/lottie/loader-six.json
  LottieGenImage get loaderSix =>
      const LottieGenImage('assets/lottie/loader-six.json');

  /// File path: assets/lottie/loader-two.json
  LottieGenImage get loaderTwo =>
      const LottieGenImage('assets/lottie/loader-two.json');

  /// File path: assets/lottie/loader.json
  LottieGenImage get loader =>
      const LottieGenImage('assets/lottie/loader.json');

  /// List of all assets
  List<LottieGenImage> get values => [loaderOne, loaderSix, loaderTwo, loader];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
