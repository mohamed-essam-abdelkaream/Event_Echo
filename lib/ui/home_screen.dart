import 'package:event_echo/business_logic/cubit.dart';
import 'package:event_echo/business_logic/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventCubit(),
      child: BlocConsumer<EventCubit, EventStates>(
        listener: (context, state) {},
        builder: (context, state) {
          EventCubit cubit = BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('Event Echo'),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search))
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              items: cubit.BottomItems,
              onTap: (index) {
                cubit.bottomNavBarChange(index);
              },
            ),
            body: cubit.Screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
