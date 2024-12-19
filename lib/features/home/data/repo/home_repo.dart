import 'package:zone_game_app/core/utils/networking/api_service.dart';

class HomeRepo {
  final DioHelper dioHelper;
  HomeRepo({required this.dioHelper});
  // Future<GetGoldModel> getGold() async {
  //   var response =
  //       await dioHelper.getData(endpoint: ApiConstants.gamersDiamondEndpoint);
  //   GetGoldModel goldModel = GetGoldModel.fromJson(response.data);
  //   return goldModel;
  // }

  // Future<GetDiamondModel> getDiamond() async {
  //   var response =
  //       await dioHelper.getData(endpoint: ApiConstants.gamersGoldEndpoint);
  //   GetDiamondModel diamondModel = GetDiamondModel.fromJson(response.data);
  //   return diamondModel;
  // }

  // Future<GetHomeModel> getHome() async {
  //   var response =
  //       await dioHelper.getData(endpoint: ApiConstants.gamersHomeEndpoint);
  //   GetHomeModel homeModel = GetHomeModel.fromJson(response.data);
  //   return homeModel;
  // }
}
