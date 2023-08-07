import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/core/utils/sliver_app_bar_delegate.dart';
import 'package:lotus_application/features/home/presentation/widgets/deal_hot.dart';
import 'package:lotus_application/features/home/presentation/widgets/famous_branch.dart';
import 'package:lotus_application/features/home/presentation/widgets/featuring_product.dart';
import 'package:lotus_application/features/home/presentation/widgets/header_home.dart';
import 'package:lotus_application/features/home/presentation/widgets/review_service.dart';
import 'package:lotus_application/features/home/presentation/widgets/search_home.dart';
import 'package:lotus_application/features/home/presentation/widgets/service_popular.dart';
import 'package:lotus_application/features/home/presentation/widgets/top_trending.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();
  bool _isBigHeader = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 80.sp) {
        if (_isBigHeader) {
          setState(() {
            _isBigHeader = false;
          });
        }
      } else if (_scrollController.position.pixels <= 242.sp) {
        if (!_isBigHeader) {
          setState(() {
            _isBigHeader = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarNone(
        context: context,
        brightness: Brightness.light,
        backgroundColor: colorPrimary,
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverAppBarDelegate(
                    minHeight: 50.sp,
                    maxHeight: 118.sp,
                    child: Stack(
                      children: [
                        _isBigHeader
                            ? const HeaderHome()
                            : ColoredBox(
                                color: Theme.of(context).primaryColor,
                                child: SizedBox(
                                  height: 50.sp,
                                  width: 100.w,
                                ),
                              ),
                        Positioned(
                          bottom: 0.sp,
                          left: 0,
                          right: 0,
                          child: SearchHome(isBigHeader: _isBigHeader),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 15.sp),
                  sliver: SuperSliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const FamousBranch(),
                        SizedBox(height: 6.sp),
                        dividerChatBig,
                        SizedBox(height: 20.sp),
                        const FeaturingProduct(),
                        SizedBox(height: 20.sp),
                        dividerChatBig,
                        SizedBox(height: 20.sp),
                        const DealHot(),
                        SizedBox(height: 20.sp),
                        dividerChatBig,
                        SizedBox(height: 20.sp),
                        const ServicePopular(),
                        SizedBox(height: 20.sp),
                        dividerChatBig,
                        SizedBox(height: 20.sp),
                        const TopTrending(),
                        SizedBox(height: 20.sp),
                        dividerChatBig,
                        SizedBox(height: 20.sp),
                        const ReviewService(),
                        SizedBox(height: 100.sp)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: colorPrimary,
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [
                    BoxShadow(
                      color: colorPrimary2.withOpacity(0.15),
                      spreadRadius: 0.4,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 18.sp,
                  horizontal: 16.sp,
                ),
                child: Row(
                  children: [
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.house,
                      index: 0,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.calendarCheck,
                      index: 1,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.chatTeardropDots,
                      index: 2,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.userCircle,
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonBottomNavigator({required IconData icon, required int index}) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(
          vertical: 10.sp,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  index == _currentIndex ? colorPrimary2 : Colors.grey.shade400,
              size: 20.sp,
            ),
            SizedBox(height: 3.sp),
            index != _currentIndex
                ? const SizedBox()
                : Container(
                    height: 3.sp,
                    width: 3.sp,
                    decoration: const BoxDecoration(
                      color: colorPrimary2,
                      shape: BoxShape.circle,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
