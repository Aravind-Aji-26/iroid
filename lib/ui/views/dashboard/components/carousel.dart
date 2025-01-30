import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../model/home_model.dart';
import '../dashboard_viewmodel.dart';

class CarouselHome extends StatelessWidget {
  final List<BannerModel>? banners;

  const CarouselHome({
    super.key,
    this.banners,
  });

  @override
  Widget build(BuildContext context) {
    if (banners == null || banners!.isEmpty) {
      return Container(); // Or a placeholder widget if banners are empty
    }

    return Container(
      width: double.infinity,
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: CarouselSlider.builder(  // Use CarouselSlider.builder
        itemCount: banners!.length,    // Set the item count
        itemBuilder: (BuildContext context, int index, int realIndex) { // Build each item
          final banner = banners![index]; // Access the current banner
          return Container(
            width: double.infinity,
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              banner.image ?? '',
              fit: BoxFit.cover,
              errorBuilder: (context, object, stackTrace) {
                return const Center(child: Icon(Icons.error));
              },
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          );
        },
        options: CarouselOptions(autoPlay: true,
          viewportFraction: 1,
          height: 136,
          onPageChanged: (index, reason) {

          },
        ),
      ),
    );
  }
}