import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_application/core/app/bloc/app_bloc.dart';
import 'package:lotus_application/features/chat/presentation/screens/chat_screen.dart';
import 'package:lotus_application/features/home/presentation/blocs/home/home_bloc.dart';
import 'package:lotus_application/features/home/presentation/screens/home_screen.dart';
import 'package:lotus_application/features/home/presentation/widgets/bottom_navigator_home.dart';
import 'package:lotus_application/features/notification/presentation/screens/notification_screen.dart';
import 'package:lotus_application/features/profile/presentation/screens/profile_screen.dart';
import 'package:lotus_application/features/schedule/presentation/screens/schedules_screen.dart';

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
            child: BottomNavigatorHome(
              onChangeBottom: (index) {
                if (index == _currentIndex) return;
                setState(() {
                  _currentIndex = index;
                });
                AppBloc.homeBloc.add(OnChangeIndexEvent(index: _currentIndex));
              },
              currentIndex: _currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
