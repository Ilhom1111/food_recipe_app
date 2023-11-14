import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/models/categorie_foods/categorie_foods_model.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../blocs/categorie_foods_bloc/categorie_foods_bloc.dart';
import '../views/loading.dart';
import 'anim_navigator.dart';
import 'food_id_page.dart';

class CountriesFoodsPage extends StatefulWidget {
  final String countries;
  const CountriesFoodsPage({super.key, required this.countries});

  @override
  State<CountriesFoodsPage> createState() => _CountriesFoodsPageState();
}

class _CountriesFoodsPageState extends State<CountriesFoodsPage> {
  CategorieFoods? countriesFoods;
  @override
  void initState() {
    context
        .read<CategorieFoodsBloc>()
        .add(CountriesFoodsParsEvent(widget.countries));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double gridY = MediaQuery.sizeOf(context).height / 3.h;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff70b9be),
        title: Text(
          widget.countries,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<CategorieFoodsBloc, CategorieFoodsState>(
            listener: (context, state) async {
              if (state is CategorieFoodsFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message)));
              }

              if (state is CreateCountriesFoodsSuccess) {
                countriesFoods = state.countries;
              }
            },
          ),
        ],
        child: BlocBuilder<CategorieFoodsBloc, CategorieFoodsState>(
          builder: (context, state) {
            if (state is CategorieFoodsLoading) {
              return const Loading();
            } else {
              if (countriesFoods != null) {
                return AnimationLimiter(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                    child: GridView.builder(
                      itemCount: countriesFoods!.meals.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: gridY,
                        mainAxisSpacing: 10.h,
                        crossAxisSpacing: 10.w,
                      ),
                      itemBuilder: (context, index) {
                        final food = countriesFoods!.meals[index];
                        return AnimationConfiguration.staggeredGrid(
                          position: index,
                          columnCount: 2,
                          child: ScaleAnimation(
                            duration: const Duration(seconds: 1),
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    AnimNavigator(
                                      FoodIdPage(
                                        id: food.idMeal,
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: food.strMealThumb,
                                          width: double.infinity,
                                          height: gridY / 1.5.h,
                                          fit: BoxFit.fitHeight,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(
                                          food.strMeal,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const Spacer(flex: 3),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }
          },
        ),
      ),
    );
  }
}
