// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:zone_game_app/core/utils/models/enums/cubit_states.dart';
// import 'package:zone_game_app/features/home/data/repo/home_repo.dart';
// import 'package:zone_game_app/features/home/presentation/manager/cubit/home_state.dart';

// class HomeCubit extends Cubit<HomeState> {
//   HomeCubit({required this.homeRepo}) : super(HomeState());
//   final HomeRepo homeRepo;

  // Future<void> getGold() async {
  //   try {
  //     emit(state.editState(getGoldState: CubitStates.loading));
  //     var response = await homeRepo.getGold();
  //     emit(state.editState(
  //         getGoldState: CubitStates.success, goldData: response.data));
  //   } on DioException catch (e) {
  //     emit(state.editState(getGoldState: CubitStates.failure));
  //   } catch (e) {
  //     emit(state.editState(getGoldState: CubitStates.failure));
  //   }
  // }

  // Future<void> getDiamond() async {
  //   try {
  //     emit(state.editState(getDiamondState: CubitStates.loading));
  //     var response = await homeRepo.getDiamond();
  //     emit(state.editState(
  //         getGoldState: CubitStates.success, diamondData: response.data));
  //   } on DioException catch (e) {
  //     emit(state.editState(getDiamondState: CubitStates.failure));
  //   } catch (e) {
  //     emit(state.editState(getDiamondState: CubitStates.failure));
  //   }
  // }

  // Future<void> getHome() async {
  //   try {
  //     emit(state.editState(getHomeState: CubitStates.loading));
  //     var response = await homeRepo.getHome();
  //     emit(state.editState(
  //         getGoldState: CubitStates.success, homeData: response.data));
  //   } on DioException catch (e) {
  //     emit(state.editState(getHomeState: CubitStates.failure));
  //   } catch (e) {
  //     emit(state.editState(getHomeState: CubitStates.failure));
  //   }
  // }

  // Future<void> getAllHomeData()async{
  //   await getGold();
  //   await getDiamond();
  //   await getHome();
  // }
// }
