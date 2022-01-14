import 'package:bloc/bloc.dart';

class MyState {
  final int field1;
  final String field2;

  MyState(this.field1, this.field2);

  // == and hashCode overrides...
}

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyState(0, 'initial value'));

  void changeState() {
    emit(MyState(0, 'New value'));
  }
}