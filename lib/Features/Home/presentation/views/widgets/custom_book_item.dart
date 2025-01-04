import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget
{
  const CustomBookImage({super.key, required this.imageUrl});


  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
        ),
      ),
    );
  }
}
