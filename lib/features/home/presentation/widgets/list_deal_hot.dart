import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:sizer/sizer.dart';

class ListDealHot extends StatefulWidget {
  const ListDealHot({super.key});

  @override
  State<ListDealHot> createState() => _ListDealHotState();
}

class _ListDealHotState extends State<ListDealHot> {
  final List<String> listBanner = [
    AssetsIconImage.imgBanner1,
    AssetsIconImage.imgBanner2,
    AssetsIconImage.imgBanner3,
    AssetsIconImage.imgBanner4,
    AssetsIconImage.imgBanner5,
  ];

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                child: CarouselSlider(
                  items: List.generate(
                    listBanner.length,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(8.sp),
                      child: Image.asset(
                        listBanner[index],
                        height: 140.sp,
                        width: 100.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    aspectRatio: 21 / 9,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8.sp,
              right: 16.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listBanner.asMap().entries.map(
                  (entry) {
                    return Container(
                      width: _current == entry.key ? 4.sp : 3.sp,
                      height: _current == entry.key ? 4.sp : 3.sp,
                      margin: EdgeInsets.symmetric(
                        horizontal: 3.0.sp,
                      ).add(
                        EdgeInsets.only(top: 8.0.sp),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == entry.key ? Colors.white : colorBrown1,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
