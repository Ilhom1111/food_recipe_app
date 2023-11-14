import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/models/food_id/food_id_model.dart';
import 'package:food_recipe_app/pages/image_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../blocs/food_id_bloc/food_id_bloc.dart';
import '../views/loading.dart';
import 'anim_navigator.dart';

class FoodIdPage extends StatefulWidget {
  final String id;
  const FoodIdPage({super.key, required this.id});

  @override
  State<FoodIdPage> createState() => _FoodIdPageState();
}

class _FoodIdPageState extends State<FoodIdPage> {
  late YoutubePlayerController _controller;
  final PageController _pageController = PageController();
  FoodId? foodId;
  @override
  void initState() {
    context.read<FoodIdBloc>().add(FoodIdParsEvent(widget.id));
    super.initState();
    log(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: MultiBlocListener(
            listeners: [
              BlocListener<FoodIdBloc, FoodIdState>(
                listener: (context, state) async {
                  if (state is FoodIdFailure) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(state.message)));
                  }

                  if (state is CreateFoodIdSuccess) {
                    foodId = state.food;
                  }
                },
              ),
            ],
            child: BlocBuilder<FoodIdBloc, FoodIdState>(
              builder: (context, state) {
                if (state is FoodIdLoading) {
                  return SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: const Loading(),
                  );
                } else {
                  if (foodId != null) {
                    final food = foodId!.meals![0];
                    final videoId = YoutubePlayer.convertUrlToId(
                        food.strYoutube == "" || food.strYoutube == null
                            ? "https://www.youtube.com/watch?v=uVQ66jiL-Dc"
                            : food.strYoutube!);
                    _controller = YoutubePlayerController(
                      initialVideoId: videoId!,
                      flags: const YoutubePlayerFlags(
                        autoPlay: false,
                      ),
                    );
                    List<String?> ingredient = [
                      food.strIngredient1,
                      food.strIngredient2,
                      food.strIngredient3,
                      food.strIngredient4,
                      food.strIngredient5,
                      food.strIngredient6,
                      food.strIngredient7,
                      food.strIngredient8,
                      food.strIngredient9,
                      food.strIngredient10,
                      food.strIngredient11,
                      food.strIngredient12,
                      food.strIngredient13,
                      food.strIngredient14,
                      food.strIngredient15,
                      food.strIngredient16,
                      food.strIngredient17,
                      food.strIngredient18,
                      food.strIngredient19,
                      food.strIngredient20,
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Center(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xff70b9be),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  food.strMeal,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.overline,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height / 3.h,
                              child: PageView(
                                controller: _pageController,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          AnimNavigator(
                                            ImagePage(
                                              image: food.strMealThumb ??
                                                  "https://cdn1.ozone.ru/s3/multimedia-x/6391435521.jpg",
                                            ),
                                          ),
                                        );
                                      },
                                      child: CachedNetworkImage(
                                        imageUrl: food.strMealThumb == null
                                            ? "https://cdn1.ozone.ru/s3/multimedia-x/6391435521.jpg"
                                            : food.strMealThumb!,
                                        width: double.infinity,
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                3.h,
                                        fit: BoxFit.fitWidth,
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      YoutubePlayer(
                                        controller: _controller,
                                        showVideoProgressIndicator: true,
                                        aspectRatio: 16 / 10,
                                        bottomActions: [
                                          CurrentPosition(
                                              controller: _controller),
                                          ProgressBar(
                                            isExpanded: true,
                                            colors: const ProgressBarColors(
                                              playedColor: Color(0xff70b9be),
                                              handleColor: Color(0xff70b9be),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          color: Colors.white.withOpacity(.0),
                                          height: 25.h,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: SmoothPageIndicator(
                              controller: _pageController,
                              count: 2,
                              effect: WormEffect(
                                activeDotColor: Color(0xff70b9be),
                                dotWidth: 12.w,
                                dotHeight: 12.h,
                                spacing: 8,
                                radius: 4,
                              ),
                              onDotClicked: (i) {
                                _pageController.animateToPage(i,
                                    duration: const Duration(milliseconds: 700),
                                    curve: Curves.linear);
                              },
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Area: ",
                                      style: TextStyle(
                                        color: const Color(0xff70b9be),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: food.strArea,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Category: ",
                                      style: TextStyle(
                                        color: const Color(0xff70b9be),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: food.strCategory,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Ingredients",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 36, 91, 95),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Wrap(
                            children: [
                              for (int i = 0; i < ingredient.length; i++)
                                Text(
                                  ingredient[i] == null || ingredient[i] == ""
                                      ? ""
                                      : "${ingredient[i]}, ",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Instructions",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 36, 91, 95),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            food.strInstructions ?? " ",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15.h),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
