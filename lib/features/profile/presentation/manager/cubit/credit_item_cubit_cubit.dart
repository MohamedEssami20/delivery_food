
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditItemCubitCubit extends Cubit<int> {
  CreditItemCubitCubit() : super(0);

  void changeCurrentIndex(int index) => emit(index);
}
