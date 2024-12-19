class HomeGame {
  int? id;
  String? name;
  String? img;

  HomeGame({this.id, this.name, this.img});

  factory HomeGame.fromJson(Map<String, dynamic> json) => HomeGame(
        id: json['id'] as int?,
        name: json['name'] as String?,
        img: json['img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'img': img,
      };
}
