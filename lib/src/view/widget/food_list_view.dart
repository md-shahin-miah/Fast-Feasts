import 'package:fast_food_app/core/app_extension.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/app_style.dart';
import '../../controller/food_controller.dart';
import '../../model/food.dart';
import '../screen/food_detail_screen.dart';
import 'custom_page_route.dart';


final FoodController controller = Get.put(FoodController());

class FoodListView extends StatelessWidget {
  const FoodListView({
    Key? key,
    required this.foods,
    this.isReversedList = false,
  }) : super(key: key);

  final List<Food> foods;
  final bool isReversedList;
  Widget cards(String image,String title, double price) {
    return Container(
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 90,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 2),
                child: Text("\$ $price",
                    style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16))),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 5, left: 15,bottom: 5),
        scrollDirection: Axis.horizontal,
        itemCount: isReversedList ? 6 : foods.length,
        itemBuilder: (_, index) {
          Food food =
              isReversedList ? foods.reversed.toList()[index] : foods[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CustomPageRoute(child: FoodDetailScreen(food: food)),
              );
            },
            child:Container(

                child: cards(food.image, food.name, food.price)),

            // Container(
            //   width: 160,
            //   padding: const EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     color: controller.isLightTheme
            //         ? Colors.white
            //         : DarkThemeColor.primaryLight,
            //     borderRadius: const BorderRadius.all(Radius.circular(20)),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Image.asset(food.image, scale: 4,fit: BoxFit.fitHeight,),
            //         Text(
            //           "\$${food.price}",
            //           textAlign: TextAlign.center,
            //           style: h3Style.copyWith(color: LightThemeColor.accent,),
            //         ),
            //         Text(
            //           food.name,
            //           style: Theme.of(context)
            //               .textTheme
            //               .headlineMedium
            //               ?.copyWith(fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ).fadeAnimation(0.7),
            //   ),
            // ),
          );
        },
        separatorBuilder: (_, __) {
          return const Padding(padding: EdgeInsets.only(right: 15));
        },
      ),
    );
  }
}
