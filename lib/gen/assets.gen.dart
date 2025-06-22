/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Back.png
  AssetGenImage get back => const AssetGenImage('assets/images/Back.png');

  /// File path: assets/images/Button.png
  AssetGenImage get button => const AssetGenImage('assets/images/Button.png');

  /// File path: assets/images/FEELS LIKE.png
  AssetGenImage get feelsLike =>
      const AssetGenImage('assets/images/FEELS LIKE.png');

  /// File path: assets/images/Frame 3.png
  AssetGenImage get frame3 => const AssetGenImage('assets/images/Frame 3.png');

  /// File path: assets/images/Front.png
  AssetGenImage get front => const AssetGenImage('assets/images/Front.png');

  /// File path: assets/images/HUMIDITY.png
  AssetGenImage get humidity =>
      const AssetGenImage('assets/images/HUMIDITY.png');

  /// File path: assets/images/House 4 3.png
  AssetGenImage get house43 =>
      const AssetGenImage('assets/images/House 4 3.png');

  /// File path: assets/images/Hover.png
  AssetGenImage get hover => const AssetGenImage('assets/images/Hover.png');

  /// File path: assets/images/Image.jpg
  AssetGenImage get image => const AssetGenImage('assets/images/Image.jpg');

  /// File path: assets/images/Medium Widget.png
  AssetGenImage get mediumWidget =>
      const AssetGenImage('assets/images/Medium Widget.png');

  /// File path: assets/images/Moon cloud fast wind.png
  AssetGenImage get moonCloudFastWind =>
      const AssetGenImage('assets/images/Moon cloud fast wind.png');

  /// File path: assets/images/Moon cloud mid rain.png
  AssetGenImage get moonCloudMidRain =>
      const AssetGenImage('assets/images/Moon cloud mid rain.png');

  /// File path: assets/images/PRESSURE.png
  AssetGenImage get pressure =>
      const AssetGenImage('assets/images/PRESSURE.png');

  /// File path: assets/images/Plus.png
  AssetGenImage get plus => const AssetGenImage('assets/images/Plus.png');

  /// File path: assets/images/RAINFALL.png
  AssetGenImage get rainfall =>
      const AssetGenImage('assets/images/RAINFALL.png');

  /// File path: assets/images/Rectangle 1.png
  AssetGenImage get rectangle1 =>
      const AssetGenImage('assets/images/Rectangle 1.png');

  /// File path: assets/images/Rectangle 364.png
  AssetGenImage get rectangle364 =>
      const AssetGenImage('assets/images/Rectangle 364.png');

  /// File path: assets/images/SUNRISE.png
  AssetGenImage get sunrise => const AssetGenImage('assets/images/SUNRISE.png');

  /// File path: assets/images/Subtract.png
  AssetGenImage get subtract =>
      const AssetGenImage('assets/images/Subtract.png');

  /// File path: assets/images/Sun cloud angled rain.png
  AssetGenImage get sunCloudAngledRain =>
      const AssetGenImage('assets/images/Sun cloud angled rain.png');

  /// File path: assets/images/Sun cloud mid rain.png
  AssetGenImage get sunCloudMidRain =>
      const AssetGenImage('assets/images/Sun cloud mid rain.png');

  /// File path: assets/images/Symbol.png
  AssetGenImage get symbol => const AssetGenImage('assets/images/Symbol.png');

  /// File path: assets/images/Tornado.png
  AssetGenImage get tornado => const AssetGenImage('assets/images/Tornado.png');

  /// File path: assets/images/UV INDEX.png
  AssetGenImage get uvIndex =>
      const AssetGenImage('assets/images/UV INDEX.png');

  /// File path: assets/images/VISIBILITY.png
  AssetGenImage get visibility =>
      const AssetGenImage('assets/images/VISIBILITY.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        back,
        button,
        feelsLike,
        frame3,
        front,
        humidity,
        house43,
        hover,
        image,
        mediumWidget,
        moonCloudFastWind,
        moonCloudMidRain,
        pressure,
        plus,
        rainfall,
        rectangle1,
        rectangle364,
        sunrise,
        subtract,
        sunCloudAngledRain,
        sunCloudMidRain,
        symbol,
        tornado,
        uvIndex,
        visibility
      ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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
