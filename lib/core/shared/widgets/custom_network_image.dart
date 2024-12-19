// shared Network image widget
// usd CachedNetworkImage package
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.image,
    this.fit,
    this.height,
    this.width,
    this.radius,
  });
  final String image;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: image,
        errorWidget: (context, url, error) => Container(),
        placeholder: (context, url) => SizedBox(height: 50, child: Container()),
        fit: fit ?? BoxFit.cover,
      ),
    );
  }
}
