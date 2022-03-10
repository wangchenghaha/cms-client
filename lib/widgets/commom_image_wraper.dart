import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget CommonImageWrapper(String imageUrl) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    placeholder: (context, url) =>
        Image.asset('assets/images/imgLoad.png', fit: BoxFit.contain),
    errorWidget: (context, url, error) =>
        Image.asset('assets/images/notFound.jpeg', fit: BoxFit.contain),
  );
}
