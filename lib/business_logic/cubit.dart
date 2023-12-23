import 'package:bloc/bloc.dart';
import 'package:event_echo/business_logic/states.dart';
import 'package:event_echo/ui/business.dart';
import 'package:event_echo/ui/science.dart';
import 'package:event_echo/ui/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/sports.dart';

class EventCubit extends Cubit<EventStates> {
  EventCubit() : super(EventInitialState());

  static EventCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<BottomNavigationBarItem> BottomItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.science_outlined),
        label: 'Science'),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports_baseball_sharp),
        label: 'Sports'),
    BottomNavigationBarItem(
        icon: Icon(Icons.business_center_outlined),
        label: 'Business'),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings')
  ];

  List<Widget> Screens =[
    Science(),
    Sports(),
    Business(),
    Settings()
  ];

  void bottomNavBarChange(index) {
    currentIndex = index;
    emit(EventBottomNavState());
  }
}
