import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_application/core/app/bloc/app_bloc.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/features/chat/presentation/screens/chat_screen.dart';
import 'package:lotus_application/features/home/presentation/blocs/home/home_bloc.dart';
import 'package:lotus_application/features/home/presentation/screens/home_screen.dart';
import 'package:lotus_application/features/notification/presentation/screens/notification_screen.dart';
import 'package:lotus_application/features/profile/presentation/screens/profile_screen.dart';
import 'package:lotus_application/features/schedule/presentation/screens/schedules_screen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screen = [
    const HomeScreen(),
    const SchedulesScreen(),
    const ChatScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeDone) {
                return _screen[state.index];
              }
              return const HomeScreen();
            },
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
                    icon: PhosphorIcons.light.bellSimpleRinging,
                    index: 3,
                  ),
                  _buttonBottomNavigator(
                    icon: PhosphorIcons.light.userCircle,
                    index: 4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonBottomNavigator({required IconData icon, required int index}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (index == _currentIndex) return;
          setState(() {
            _currentIndex = index;
          });
          AppBloc.homeBloc.add(OnChangeIndexEvent(index: _currentIndex));
        },
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
                color: index == _currentIndex
                    ? colorPrimary2
                    : Colors.grey.shade400,
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
      ),
    );
  }
}
