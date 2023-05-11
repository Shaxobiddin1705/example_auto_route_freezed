import 'dart:developer';

import 'package:example_auto_route/pages/models/user_model/user_model.dart';
import 'package:example_auto_route/services/dio/dio_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_Started>((event, emit) async {
      emit(const HomeState.loading());
      await _getUsers(emit);
    });
  }

  Future<void> _getUsers(Emitter<HomeState> emit) async {
    final dio = DioService();
    final result = await dio.get(api: '', params: {});
    log(result.toString());
    if (result != null) {
      final usersModel = Results.fromJson(result);
      emit(HomeState.loaded(user: usersModel.results.first));
    }
  }
}
