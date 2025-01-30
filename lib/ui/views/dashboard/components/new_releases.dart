import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iroid/model/home_model.dart';

import '../../../../ui_helpers.dart';
import '../dashboard_viewmodel.dart';

class NewReleases extends StatelessWidget {
  final DashboardViewModel viewModel;
  final Section? section;
  const NewReleases({
    super.key, required this.viewModel, this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            section?.title ?? '',
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        height_5,
        height_10,
        Container(
          width: double.infinity,
          height: 520,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: CarouselSlider.builder(
            itemCount: section?.data?.length ?? 0,
            itemBuilder: (BuildContext context, int index, int realIndex) { // Build each item
              final banner = section?.data?[index];
              return Container(
                width: double.infinity,
                height: 520,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  banner?.image ?? 'https://www.google.com/search?sca_esv=3e7026d05fa1ec3b&sxsrf=AHTn8zp7rQolU-H9YRJUu6QVzPPwZe8o9A:1738232399648&q=placeholder+network+image&udm=2&fbs=ABzOT_CWdhQLP1FcmU5B0fn3xuWpA-dk4wpBWOGsoR7DG5zJBs5KbvfUChveCKqCmofFTOmD6-uRqIJSzI7SBoU243xF-xhYb2PwmWIgkT4Nel2A_3ybAWmVvFNrbfrqdItZi_VPLUKFP52UVkw0OXr8RxIClKaT05pmGwzXGjFun1bhMyng7QNOwGMuHAyN9K5bU6QC4mIfA3FPmxYz-QP9wfiC1ZA1lg&sa=X&ved=2ahUKEwipwt6lnJ2LAxU7wjgGHX0dIVAQtKgLegQIGBAB&biw=1920&bih=951&dpr=1#vhid=REKoFf9zElIAdM&vssid=mosaic',
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
            options: CarouselOptions(
              viewportFraction: 1,autoPlay: true,
              height: 520,
              onPageChanged: (index, reason) {
                viewModel.setSliderIndex(index);
              },
            ),
          ),
        ),
        height_15,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildIndicator(viewModel),
        ),
      ],
    );
  }

  List<Widget> _buildIndicator(DashboardViewModel viewModel) {
    return List<Widget>.generate(3, (index) {
      return viewModel.sliderIndex == index
          ? Container(
        width: 5,
        height: 5,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: const BoxDecoration(
          color: Color(0xFF313131),
          shape: BoxShape.circle,
        ),
      )
          : Container(
        width: 5,
        height: 5,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFD9D9D9),
        ),
      );
    });
  }

}