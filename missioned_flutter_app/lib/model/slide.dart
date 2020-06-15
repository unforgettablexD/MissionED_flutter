import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });
}

final slidelist=[
  Slide(
    imageUrl: 'assets/onboarding1.png',
    title: 'Title 1',
    description: 'Description1',
  ),
  Slide(
    imageUrl: 'assets/onboarding2.png',
    title: 'Title 2',
    description: 'Description 2',
  ),
  Slide(
    imageUrl: 'assets/onboarding3.png',
    title: 'Title 3',
    description: 'Description 3',
  ),
];