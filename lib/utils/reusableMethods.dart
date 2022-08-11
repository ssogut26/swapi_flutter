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

  SizedBox cachedResultImageBox(BuildContext context, FadeInImage? image) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: image,
    );
  }
}
