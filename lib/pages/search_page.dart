import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:food_recipe_app/models/food_id/food_id_model.dart';
import 'package:food_recipe_app/pages/anim_navigator.dart';

import '../blocs/search_bloc/search_bloc.dart';
import '../views/loading.dart';
import 'food_id_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  FoodId? searchFood;
  String text = "";

  @override
  void initState() {
    context.read<SearchBloc>().add(const SearchParsEvent(''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double gridY = MediaQuery.sizeOf(context).height / 3.h;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            MultiBlocListener(
              listeners: [
                BlocListener<SearchBloc, SearchState>(
                  listener: (context, state) async {
                    if (state is SearchFailure) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(state.message)));
                    }

                    if (state is CreateSearchSuccess) {
                      searchFood = state.food;
                    }
                  },
                ),
              ],
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is SearchLoading) {
                    return const Loading();
                  } else {
                    if (searchFood?.meals != null) {
                      return Padding(
                        padding:
                            EdgeInsets.only(top: 54.h, left: 10.w, right: 10.w),
                        child: GridView.builder(
                          itemCount: searchFood!.meals!.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: gridY,
                            mainAxisSpacing: 10.h,
                            crossAxisSpacing: 10.w,
                          ),
                          itemBuilder: (context, index) {
                            final food = searchFood!.meals![index];
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl: food.strMealThumb!,
                                              width: double.infinity,
                                              height: gridY / 1.5,
                                              fit: BoxFit.fitHeight,
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.w),
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
                      );
                    } else {
                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: Center(
                          child: Text(
                            "Nothing found",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width.w,
                height: 54.h,
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  onChanged: (value) {
                    text = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'the name of the dish',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        context.read<SearchBloc>().add(SearchParsEvent(text));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10.h,
                          bottom: 10.h,
                          right: 10.w,
                          left: 5.w,
                        ),
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: const Color(0xff70b9be),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "search",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff70b9be),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff70b9be),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
