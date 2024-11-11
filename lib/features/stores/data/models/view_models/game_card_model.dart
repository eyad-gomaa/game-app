import 'package:flutter/material.dart';

class GameCardModel {
  final String name;
  final String image;
  final Color color;
  final void Function() onTap;

  GameCardModel({
    required this.name,
    required this.image,
    required this.color,
    required this.onTap,
  });
}