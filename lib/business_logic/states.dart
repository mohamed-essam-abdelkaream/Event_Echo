abstract class EventStates{}

class EventInitialState extends EventStates{}
class EventBottomNavState extends EventStates{}
class EventDetBusinessSuccessState extends EventStates{}
class EventDetBusinessErrorState extends EventStates{
  late final String error;
  EventDetBusinessErrorState(this.error);
}
class EventLoadingState extends EventStates{}
