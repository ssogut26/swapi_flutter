import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Methods {
  SizedBox cachedPhotoBox(CachedNetworkImage? image) {
    heights() {
      if (image == null) {
        image?.height ?? 500 * 0.5;
      }
    }

    return SizedBox(
      height: heights(),
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
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
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

  CachedNetworkImage cachedImage(String imageUrl) {
    return CachedNetworkImage(
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Image.asset('assets/images/placeholder.jpg'),
      imageUrl: imageUrl,
    );
  }
}
