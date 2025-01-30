import 'package:flutter/material.dart';
import 'package:iroid/model/home_model.dart';

import '../../../../ui_helpers.dart';

class TrendingHorizontal extends StatelessWidget {
  final Section? sections;
  const TrendingHorizontal({
    super.key, this.sections,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            sections?.title ?? '',
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
            ),
          ),
          height_5,
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: sections?.data?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 157,
                      width: 234,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image:  DecorationImage(
                              image: NetworkImage(sections?.data?[index].image ?? ''),
                              fit: BoxFit.fill)),
                    ),
                     SizedBox(     width: 234,
                       child: Text(
                        sections?.data?[index].title ?? '',
                        style: const TextStyle(
                          color: Color(0xFF313131),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w700,overflow: TextOverflow.ellipsis
                        ),
                                           ),
                     ),
                     SizedBox(     width: 234,
                       child: Text(
                         sections?.data?[index].description ?? '',
                        style: const TextStyle(
                          color: Color(0xFF313131),
                          fontSize: 12,
                          fontFamily: 'SF Pro Text',overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w400,
                        ),
                                           ),
                     )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}