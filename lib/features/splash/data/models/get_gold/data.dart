class GetGoldData {
  int? gold;

  GetGoldData({this.gold});

  factory GetGoldData.fromJson(Map<String, dynamic> json) => GetGoldData(
        gold: json['gold'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'gold': gold,
      };
}
