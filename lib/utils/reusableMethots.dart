import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Methods {
  SizedBox photoBox(CachedNetworkImage image) {
    return SizedBox(
      height: 195,
      width: 148,
      child: image,
    );
  }
}
