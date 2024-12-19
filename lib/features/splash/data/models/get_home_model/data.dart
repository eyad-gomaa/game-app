import 'game.dart';
import 'slider.dart';

class HomeData {
  List<HomeSlider>? sliders;
  List<HomeGame>? games;

  HomeData({this.sliders, this.games});

  factory HomeData.fromJson(Map<String, dynamic> json) => HomeData(
        sliders: (json['sliders'] as List<dynamic>?)
            ?.map((e) => HomeSlider.fromJson(e as Map<String, dynamic>))
            .toList(),
        games: (json['games'] as List<dynamic>?)
            ?.map((e) => HomeGame.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'sliders': sliders?.map((e) => e.toJson()).toList(),
        'games': games?.map((e) => e.toJson()).toList(),
      };
}
