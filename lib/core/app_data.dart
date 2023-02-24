import 'package:flutter/material.dart';

import '../src/model/bottom_navigation_item.dart';
import '../src/model/food.dart';
import '../src/model/food_category.dart';
import 'app_asset.dart';
import 'app_icon.dart';


class AppData {
  const AppData._();

  static const dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting "
      "industry. Lorem Ipsum has been the industry's standard dummy text ever "
      "since the 1500s, when an unknown printer took a galley of type and "
      "scrambled it to make a type specimen book. It has survived not only five "
      "centuries, but also the leap into electronic typesetting, remaining "
      "essentially unchanged. It was popularised in the 1960s with the release "
      "of Letraset sheets containing Lorem Ipsum passages, and more recently "
      "with desktop publishing software like Aldus PageMaker including versions "
      "of Lorem Ipsum.";

  static List<Food> foodItems = [
    Food(
      AppAsset.beef_burger,
      "Beef Burger",
      7.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.burger,
      150,
    ),
    Food(
      AppAsset.big_appetizing_hamburger,
      "Big Appetizing Hamburger",
      15.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.burger,
      652,
    ),
    Food(
      AppAsset.Charlis_burger,
      "Charlis burger",
      20.0,
      1,
      false,
      dummyText,
      4.0,
      FoodType.burger,
      723,
    ),
    Food(
      AppAsset.cheesyyumburger,
      "Cheesy Yum Burger",
      40.0,
      1,
      false,
      dummyText,
      2.5,
      FoodType.burger,
      456,
    ),
    Food(
      AppAsset.Chicken_burger,
      "Chicken_burger",
      10.0,
      1,
      false,
      dummyText,
      4.5,
      FoodType.burger,
      650,
    ),
    Food(
      AppAsset.deluxe_burger,
      "deluxe_burger",
      20.0,
      1,
      false,
      dummyText,
      1.5,
      FoodType.burger,
      350,
    ),
    Food(
      AppAsset.hamburger,
      "hamburger",
      12.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.burger,
      265,
    ),
    Food(
      AppAsset.shake_shek_style,
      "shake_shek_style",
      30.0,
      1,
      false,
      dummyText,
      4.0,
      FoodType.burger,
      890,
    ),
    Food(
      AppAsset.pizza1,
      "Pizza One",
      10.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.pizza,
      900,
    ),
    Food(
      AppAsset.pizza2,
      "Pizza Two",
      10.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.pizza,
      900,
    ),
    Food(
      AppAsset.pizza3,
      "Pizza Three",
      15.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.pizza,
      420,
    ),
    Food(
      AppAsset.pizza4,
      "Pizza Four",
      10.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.pizza,
      900,
    ),
    Food(
      AppAsset.pizza5,
      "Pizza Five",
      10.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.pizza,
      900,
    ),
    Food(
      AppAsset.pizza6,
      "Pizza Six",
      15.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.pizza,
      420,
    ),

    Food(
      AppAsset.pizza7,
      "Pizza Seven",
      15.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.pizza,
      420,
    ),
    Food(
      AppAsset.biriyani1,
      "Biriyani platter",
      25.0,
      1,
      false,
      dummyText,
      3.0,
      FoodType.biriyani,
      263,
    ),
    Food(
      AppAsset.biriyani2,
      "Biriyani Chicken",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.biriyani,
      560,
    ),
    Food(
      AppAsset.biriyani3,
      "Biriyani plain",
      25.0,
      1,
      false,
      dummyText,
      3.0,
      FoodType.biriyani,
      263,
    ),
    Food(
      AppAsset.biriyani4,
      "Biriyani special",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.biriyani,
      560,
    ),
    Food(
      AppAsset.kebab4,
      "Chicken kebab",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.kebab,
      560,
    ),
    Food(
      AppAsset.kebab3,
      "Kebab Three",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.kebab,
      560,
    ),
    Food(
      AppAsset.kebab2,
      "Kebab special",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.kebab,
      560,
    ),
    Food(
      AppAsset.kebab1,
      "Kebab One",
      20.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.kebab,
      560,
    ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(
      const Icon(Icons.home_outlined),
      const Icon(Icons.home),
      'Home',
      isSelected: true,
    ),
    BottomNavigationItem(
      const Icon(Icons.shopping_cart_outlined),
      const Icon(Icons.shopping_cart),
      'Shopping cart',
    ),
    BottomNavigationItem(
      const Icon(AppIcon.outlinedHeart),
      const Icon(AppIcon.heart),
      'Favorite',
    ),
    BottomNavigationItem(
      const Icon(Icons.person_outline),
      const Icon(Icons.person),
      'Profile',
    )
  ];

  static List<FoodCategory> categories = [
    FoodCategory(FoodType.all, true),
    FoodCategory(FoodType.burger, false),
    FoodCategory(FoodType.kebab, false),
    FoodCategory(FoodType.biriyani, false),
    FoodCategory(FoodType.pizza, false)

  ];
}
