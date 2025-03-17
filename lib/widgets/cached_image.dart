import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget(
      {super.key,
      required this.imgUrl,
      this.boxFit,
      this.imgHeight,
      this.imgWidth});
  final String imgUrl;
  final double? imgHeight;
  final double? imgWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CachedNetworkImage(
      imageUrl: imgUrl,
      height: imgHeight ?? size.height * 0.18,
      width: imgWidth ?? size.width * 0.25,
      fit: boxFit ?? BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(
        AppIcons.errorIcon,
        color: Colors.red,
      ),
    );
  }
}
