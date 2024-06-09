/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bottom_bar_ips.png
  AssetGenImage get bottomBarIps => const AssetGenImage('assets/icons/bottom_bar_ips.png');

  /// File path: assets/icons/bottom_bar_login_selected.png
  AssetGenImage get bottomBarLoginSelected => const AssetGenImage('assets/icons/bottom_bar_login_selected.png');

  /// File path: assets/icons/bottom_bar_login_unselected.png
  AssetGenImage get bottomBarLoginUnselected => const AssetGenImage('assets/icons/bottom_bar_login_unselected.png');

  /// File path: assets/icons/bottom_bar_other_selected.png
  AssetGenImage get bottomBarOtherSelected => const AssetGenImage('assets/icons/bottom_bar_other_selected.png');

  /// File path: assets/icons/bottom_bar_other_unselected.png
  AssetGenImage get bottomBarOtherUnselected => const AssetGenImage('assets/icons/bottom_bar_other_unselected.png');

  /// File path: assets/icons/bottom_bar_support_selected.png
  AssetGenImage get bottomBarSupportSelected => const AssetGenImage('assets/icons/bottom_bar_support_selected.png');

  /// File path: assets/icons/bottom_bar_support_unselected.png
  AssetGenImage get bottomBarSupportUnselected => const AssetGenImage('assets/icons/bottom_bar_support_unselected.png');

  /// File path: assets/icons/bottom_bar_token.png
  AssetGenImage get bottomBarToken => const AssetGenImage('assets/icons/bottom_bar_token.png');

  /// File path: assets/icons/raiffeisen_bank_icon.jpeg
  AssetGenImage get raiffeisenBankIcon => const AssetGenImage('assets/icons/raiffeisen_bank_icon.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        bottomBarIps,
        bottomBarLoginSelected,
        bottomBarLoginUnselected,
        bottomBarOtherSelected,
        bottomBarOtherUnselected,
        bottomBarSupportSelected,
        bottomBarSupportUnselected,
        bottomBarToken,
        raiffeisenBankIcon
      ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/sr.json
  String get sr => 'assets/translations/sr.json';

  /// List of all assets
  List<String> get values => [en, sr];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
