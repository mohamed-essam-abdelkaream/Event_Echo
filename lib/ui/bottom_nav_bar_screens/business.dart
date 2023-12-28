import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:event_echo/business_logic/cubit.dart';
import 'package:event_echo/business_logic/states.dart';
import 'package:event_echo/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Business extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventCubit, EventStates>(
      listener:(context, state) {} ,
      builder:(context, state) {
        var List =EventCubit.get(context).business ;
        return ConditionalBuilder(
          condition: state is! EventLoadingState,
          builder: (context) =>  ListView.separated(
            itemBuilder:(context, index) => buildArticleItem(List[index]),
            separatorBuilder:(context, index) => SizedBox(height: 20) ,
            itemCount: 10,),
          fallback: (context) => Center(child: CircularProgressIndicator(color: Colors.deepOrange)),
        );
      },
    );
  }
}
