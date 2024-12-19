class GetDiamondData {
  int? diamond;

  GetDiamondData({this.diamond});

  factory GetDiamondData.fromJson(Map<String, dynamic> json) => GetDiamondData(
        diamond: json['diamond'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'diamond': diamond,
      };
}
