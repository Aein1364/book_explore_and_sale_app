/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  $AssetsImgIconsGen get icons => const $AssetsImgIconsGen();
  $AssetsImgImagesGen get images => const $AssetsImgImagesGen();
}

class $AssetsImgIconsGen {
  const $AssetsImgIconsGen();

  /// File path: assets/img/icons/Vector.jpg
  AssetGenImage get vector =>
      const AssetGenImage('assets/img/icons/Vector.jpg');

  /// File path: assets/img/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/img/icons/bell.png');

  /// File path: assets/img/icons/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/img/icons/cart.png');

  /// File path: assets/img/icons/community.jpg
  AssetGenImage get community =>
      const AssetGenImage('assets/img/icons/community.jpg');

  /// File path: assets/img/icons/explore.png
  AssetGenImage get explore =>
      const AssetGenImage('assets/img/icons/explore.png');

  /// File path: assets/img/icons/menu.jpg
  AssetGenImage get menu => const AssetGenImage('assets/img/icons/menu.jpg');

  /// File path: assets/img/icons/my-library.jpg
  AssetGenImage get myLibrary =>
      const AssetGenImage('assets/img/icons/my-library.jpg');

  /// File path: assets/img/icons/profle.png
  AssetGenImage get profle =>
      const AssetGenImage('assets/img/icons/profle.png');

  /// File path: assets/img/icons/search.jpg
  AssetGenImage get search =>
      const AssetGenImage('assets/img/icons/search.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [vector, bell, cart, community, explore, menu, myLibrary, profle, search];
}

class $AssetsImgImagesGen {
  const $AssetsImgImagesGen();

  /// File path: assets/img/images/book lovers.jpg
  AssetGenImage get bookLovers =>
      const AssetGenImage('assets/img/images/book lovers.jpg');

  /// File path: assets/img/images/explore poster.jpg
  AssetGenImage get explorePoster =>
      const AssetGenImage('assets/img/images/explore poster.jpg');

  /// File path: assets/img/images/father of the rain.jpg
  AssetGenImage get fatherOfTheRain =>
      const AssetGenImage('assets/img/images/father of the rain.jpg');

  /// File path: assets/img/images/ghost boys book.jpg
  AssetGenImage get ghostBoysBook =>
      const AssetGenImage('assets/img/images/ghost boys book.jpg');

  /// File path: assets/img/images/good company.jpg
  AssetGenImage get goodCompany =>
      const AssetGenImage('assets/img/images/good company.jpg');

  /// File path: assets/img/images/jodi picoult.jpg
  AssetGenImage get jodiPicoult =>
      const AssetGenImage('assets/img/images/jodi picoult.jpg');

  /// File path: assets/img/images/julia alvarez.jpg
  AssetGenImage get juliaAlvarez =>
      const AssetGenImage('assets/img/images/julia alvarez.jpg');

  /// File path: assets/img/images/malcolm x.jpg
  AssetGenImage get malcolmX =>
      const AssetGenImage('assets/img/images/malcolm x.jpg');

  /// File path: assets/img/images/man on the earth.jpg
  AssetGenImage get manOnTheEarth =>
      const AssetGenImage('assets/img/images/man on the earth.jpg');

  /// File path: assets/img/images/marie curie.jpg
  AssetGenImage get marieCurie =>
      const AssetGenImage('assets/img/images/marie curie.jpg');

  /// File path: assets/img/images/michelle obama.jpg
  AssetGenImage get michelleObama =>
      const AssetGenImage('assets/img/images/michelle obama.jpg');

  /// File path: assets/img/images/muhammad ali.jpg
  AssetGenImage get muhammadAli =>
      const AssetGenImage('assets/img/images/muhammad ali.jpg');

  /// File path: assets/img/images/review poster.jpg
  AssetGenImage get reviewPoster =>
      const AssetGenImage('assets/img/images/review poster.jpg');

  /// File path: assets/img/images/silent scream.jpg
  AssetGenImage get silentScream =>
      const AssetGenImage('assets/img/images/silent scream.jpg');

  /// File path: assets/img/images/the kid runner.jpg
  AssetGenImage get theKidRunner =>
      const AssetGenImage('assets/img/images/the kid runner.jpg');

  /// File path: assets/img/images/walt disney.jpg
  AssetGenImage get waltDisney =>
      const AssetGenImage('assets/img/images/walt disney.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bookLovers,
        explorePoster,
        fatherOfTheRain,
        ghostBoysBook,
        goodCompany,
        jodiPicoult,
        juliaAlvarez,
        malcolmX,
        manOnTheEarth,
        marieCurie,
        michelleObama,
        muhammadAli,
        reviewPoster,
        silentScream,
        theKidRunner,
        waltDisney
      ];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
