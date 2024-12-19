// import 'package:zone_game_app/core/utils/models/enums/cubit_states.dart';
// import 'package:zone_game_app/features/splash/data/models/get_diamond_Model/data.dart';
// import 'package:zone_game_app/features/splash/data/models/get_diamond_Model/get_diamond_model.dart';
// import 'package:zone_game_app/features/splash/data/models/get_gold/data.dart';
// import 'package:zone_game_app/features/splash/data/models/get_home_model/data.dart';
// import 'package:zone_game_app/features/splash/data/models/get_home_model/get_home_model.dart';

// class HomeState {
//   final CubitStates getGoldState;
//   final CubitStates getDiamondState;
//   final CubitStates getHomeState;
//   final String errorMessage;
//   final GetGoldData? goldData;
//   final GetDiamondData? diamondData;
//   final HomeData? homeData;

//   HomeState({
//     this.getGoldState = CubitStates.initial,
//     this.getDiamondState = CubitStates.initial,
//     this.getHomeState = CubitStates.initial,
//     this.errorMessage = '',
//     this.diamondData,
//     this.goldData,
//     this.homeData,
//   });

//   HomeState editState({
//     CubitStates? getGoldState,
//     CubitStates? getDiamondState,
//     CubitStates? getHomeState,
//     String? errorMessage,
//     GetGoldData? goldData,
//     GetDiamondData? diamondData,
//     HomeData? homeData,
//   }) => HomeState(
//     getGoldState: getGoldState?? this.getGoldState,
//     getDiamondState: getDiamondState?? this.getDiamondState,
//     getHomeState: getHomeState?? this.getHomeState,
//     diamondData: diamondData?? this.diamondData,
//     goldData: goldData?? this.goldData,
//     homeData: homeData?? this.homeData,
//     errorMessage: errorMessage?? this.errorMessage
//   );
// }
