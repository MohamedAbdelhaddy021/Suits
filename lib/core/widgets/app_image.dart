import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImage extends StatelessWidget {
  final String url;
  final double? height, width;
  final BoxFit fit;
  final Color? color;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext)? placeHolder;

  const AppImage(
    this.url, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color,
    this.placeholder,
    this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    if (url.endsWith('svg')) {
      return SvgPicture.asset(
        'assets/icons/$url',
        width: width,
        fit: BoxFit.scaleDown,
        height: height,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
        placeholderBuilder: placeHolder,
      );
    } else if (url.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: url,
        width: width,
        fit: fit,
        height: height,
        color: color,
        placeholder: placeholder,
      );
    } else {
      return Image.asset(
        'assets/images/$url',
        width: width,
        fit: fit,
        height: height,
        color: color,
      );
    }
  }
}
