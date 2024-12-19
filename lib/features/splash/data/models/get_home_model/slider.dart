class HomeSlider {
  int? id;
  String? name;
  String? img;
  String? description;

  HomeSlider({this.id, this.name, this.img, this.description});

  factory HomeSlider.fromJson(Map<String, dynamic> json) => HomeSlider(
        id: json['id'] as int?,
        name: json['name'] as String?,
        img: json['img'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'img': img,
        'description': description,
      };
}
