import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/utils/constants.dart';

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

  Center cachedResultImageBox(BuildContext context, CachedNetworkImage? image) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        clipBehavior: Clip.antiAlias,
        height: image?.height,
        width: image?.width,
        child: Center(child: image),
      ),
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

  RichText boldAndMediumText(
    text,
    String value,
  ) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: text, style: const TextStyle(fontWeight: FontWeight.w600)),
          TextSpan(
            text: value,
          ),
        ],
      ),
    );
  }

  Container dataContainer(context, child) {
    return Container(
      margin: ProjectPaddings.marginPadding,
      padding: ProjectPaddings.pagePadding,
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
