import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<int> {
  CategoryCubit() : super(0);
  int currentIndex = 0;
  void changeCategory(int index) {

    emit(
      index,
    );
  }
}
