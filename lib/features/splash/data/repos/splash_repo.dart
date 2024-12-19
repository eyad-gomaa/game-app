import 'package:zone_game_app/core/utils/networking/api_constants.dart';
import 'package:zone_game_app/core/utils/networking/api_service.dart';
import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/gamer_guest_model.dart';
import 'package:zone_game_app/features/splash/data/models/get_diamond_Model/get_diamond_model.dart';
import 'package:zone_game_app/features/splash/data/models/get_gold/get_gold.dart';
import 'package:zone_game_app/features/splash/data/models/get_home_model/get_home_model.dart';

class SplashRepo {
  final DioHelper dioHelper;
  SplashRepo({required this.dioHelper});

  Future<GamerGuestRegisterModel?> guestRegister() async {
    var response =
        await dioHelper.postData(endpoint: ApiConstants.guestRegisterEndpoint);
    // print(response.data.toString());
    return GamerGuestRegisterModel.fromJson(response.data);
  }
    Future<GetGoldModel> getGold() async {
    var response =
        await dioHelper.getData(endpoint: ApiConstants.gamersDiamondEndpoint);
    GetGoldModel goldModel = GetGoldModel.fromJson(response.data);
    return goldModel;
  }

  Future<GetDiamondModel> getDiamond() async {
    var response =
        await dioHelper.getData(endpoint: ApiConstants.gamersGoldEndpoint);
    GetDiamondModel diamondModel = GetDiamondModel.fromJson(response.data);
    return diamondModel;
  }

  Future<GetHomeModel> getHome() async {
    var response =
        await dioHelper.getData(endpoint: ApiConstants.gamersHomeEndpoint);
    GetHomeModel homeModel = GetHomeModel.fromJson(response.data);
    return homeModel;
  }
}
