import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Methods {
  SizedBox cachedPhotoBox(CachedNetworkImage? image) {
    return SizedBox(
      height: 195,
      width: 148,
      child: image,
    );
  }

  SizedBox fadeInPhotoBox(FadeInImage? image) {
    return SizedBox(
      height: 195,
      width: 148,
      child: image,
    );
  }

  SizedBox cachedResultImageBox(BuildContext context, CachedNetworkImage? image) {
    return SizedBox(
      height: 488,
      width: 380,
      child: image,
    );
  }

  SizedBox fadeInResultImageBox(BuildContext context, FadeInImage? image) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: image,
    );
  }

  CachedNetworkImage cachedImage(String errorUrl, String imageUrl) {
    return CachedNetworkImage(
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Image.network(errorUrl),
      imageUrl: imageUrl,
      fit: BoxFit.scaleDown,
    );
  }
}
