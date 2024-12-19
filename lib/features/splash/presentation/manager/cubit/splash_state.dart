import 'package:zone_game_app/core/utils/models/enums/cubit_states.dart';
import 'package:zone_game_app/features/splash/data/models/get_diamond_Model/data.dart';
import 'package:zone_game_app/features/splash/data/models/get_gold/data.dart';
import 'package:zone_game_app/features/splash/data/models/get_home_model/data.dart';

class SplashState {
  final CubitStates guestRegisterState;
  final CubitStates getGoldState;
  final CubitStates getDiamondState;
  final CubitStates getHomeState;
  final CubitStates getAllHomeState;
  final String errorMessage;
  final GetGoldData? goldData;
  final GetDiamondData? diamondData;
  final HomeData? homeData;

  SplashState({
    this.guestRegisterState = CubitStates.initial,
    this.getGoldState = CubitStates.initial,
    this.getDiamondState = CubitStates.initial,
    this.getHomeState = CubitStates.initial,
    this.getAllHomeState = CubitStates.initial,
    this.errorMessage = '',
    this.diamondData,
    this.goldData,
    this.homeData,
  });

  SplashState editState({
    CubitStates? guestRegisterState,
    CubitStates? getGoldState,
    CubitStates? getDiamondState,
    CubitStates? getHomeState,
    CubitStates? getAllHomeState,
    String? errorMessage,
    GetGoldData? goldData,
    GetDiamondData? diamondData,
    HomeData? homeData,
  }) => SplashState(
    guestRegisterState: guestRegisterState?? this.guestRegisterState,
    getGoldState: getGoldState?? this.getGoldState,
    getDiamondState: getDiamondState?? this.getDiamondState,
    getHomeState: getHomeState?? this.getHomeState,
    getAllHomeState: getAllHomeState?? this.getAllHomeState,
    diamondData: diamondData?? this.diamondData,
    goldData: goldData?? this.goldData,
    homeData: homeData?? this.homeData,
    errorMessage: errorMessage?? this.errorMessage
  );
}