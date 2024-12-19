import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/dependancy_injection/get_it.dart';
import 'package:zone_game_app/core/utils/local_storage_manager/shared_prefrences_helper.dart';
import 'package:zone_game_app/core/utils/models/enums/cubit_states.dart';
import 'package:zone_game_app/core/utils/networking/errors/server_failure.dart';
import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/user_data.dart';
import 'package:zone_game_app/features/splash/data/repos/splash_repo.dart';
import 'package:zone_game_app/features/splash/presentation/manager/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this.splashRepo) : super(SplashState());
  final SplashRepo splashRepo;
  Future<void> guestRegister() async {
    try {
      emit(state.editState(guestRegisterState: CubitStates.loading));

      var response = await splashRepo.guestRegister();
      UserData userData = response!.data!.guest!;
      await getIt<SharedPrefsHelper>().setBool(Keys.firstOpen, true);
      await getIt<SharedPrefsHelper>().setBool(Keys.isGuest, true);
      var userDataBox = Hive.box<UserData>(Keys.userDataBox);
      await userDataBox.put(Keys.userData, userData);
      print(userDataBox.get(Keys.userData)!.profileImg!);
      emit(state.editState(guestRegisterState: CubitStates.success));
    } on DioException catch (e) {
      ServerFailure failure = ServerFailure.fromDioError(dioException: e);
      emit(state.editState(guestRegisterState: CubitStates.failure));
    }
  }

  Future<void> getGold() async {
    try {
      emit(state.editState(getGoldState: CubitStates.loading));
      var response = await splashRepo.getGold();
      emit(state.editState(
          getGoldState: CubitStates.success, goldData: response.data));
    } on Exception {
      rethrow;
    }
  }

  Future<void> getDiamond() async {
    try {
      emit(state.editState(getDiamondState: CubitStates.loading));
      var response = await splashRepo.getDiamond();
      emit(state.editState(
          getGoldState: CubitStates.success, diamondData: response.data));
    } on Exception {
      rethrow;
    }
  }

  Future<void> getHome() async {
    try {
      emit(state.editState(getHomeState: CubitStates.loading));
      var response = await splashRepo.getHome();
      emit(state.editState(
          getGoldState: CubitStates.success, homeData: response.data));
    } on Exception {
      rethrow;
    }
  }

  Future<void> getAllHomeData() async {
    try {
      emit(state.editState(getAllHomeState: CubitStates.loading));
      await getGold();
      await getDiamond();
      await getHome();
      emit(state.editState(getAllHomeState: CubitStates.success));
    } on DioException {
      emit(state.editState(getAllHomeState: CubitStates.failure));
    } catch (e) {
      emit(state.editState(getAllHomeState: CubitStates.failure));
    }
  }
}
