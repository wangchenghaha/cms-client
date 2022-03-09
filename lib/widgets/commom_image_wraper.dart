import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget CommonImageWrapper(String imageUrl) {
  return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => Container(
            decoration: const BoxDecoration(color: Colors.black26),
          ),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/notFound.jpeg',fit: BoxFit.contain),
          );
}
