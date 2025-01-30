import 'package:flutter/material.dart';
import 'package:iroid/model/home_model.dart'; // Make sure this import is correct

import '../../../../ui_helpers.dart';

class Categories extends StatelessWidget {
  final List<Category>? categories;

  const Categories({super.key, this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffECECEC),width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height_10,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Find your requirement here',
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: 14,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          height_5,
          if (categories == null || categories!.isEmpty)
            const Center(child: Text("No categories available"))
          else
            Wrap(
              direction: Axis.horizontal,
              children: [
                ...categories!.map((category) => _buildCategoryChip(category)).toList(),
                _buildViewAllChip(),
              ],
            ),
          height_10,
        ],
      ),
    );
  }

  Widget _buildCategoryChip(Category category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 11),
          child: Text(
            category.name ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF1E1E1E),
              fontSize: 13,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildViewAllChip() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF08AA40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 29, vertical: 11),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'View all ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF6F6F6),
                  fontSize: 12,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}