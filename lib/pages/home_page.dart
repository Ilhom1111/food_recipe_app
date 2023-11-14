import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:food_recipe_app/models/categories/categories_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/categories_bloc/categories_bloc.dart';
import '../views/loading.dart';
import 'anim_navigator.dart';
import 'countries_page.dart';
import 'foods_page.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Categories? categories;

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesParsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showAdaptiveDialog(
          barrierColor: const Color(0xff70b9be).withOpacity(.15),
          context: context,
          builder: (context) {
            return AlertDialog.adaptive(
              title: const Text(
                'Are you sure you want to exit the app?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff70b9be)),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('No'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff70b9be)),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                )
              ],
            );
          },
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff70b9be),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                AnimNavigator(
                  const CountriesPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.flag,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              splashRadius: 25,
              onPressed: () {
                Navigator.push(
                  context,
                  AnimNavigator(
                    const SearchPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8.w),
          ],
          title: Text(
            "Food Recipe",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          centerTitle: true,
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<CategoriesBloc, CategoriesState>(
              listener: (context, state) async {
                if (state is CategoriesFailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.message)));
                }

                if (state is CreateCategoriesSuccess) {
                  categories = state.categories;
                }
              },
            ),
          ],
          child: BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              if (state is CategoriesLoading) {
                return const Loading();
              } else {
                if (categories?.categories != null) {
                  return ListView.builder(
                    itemCount: categories!.categories.length,
                    itemBuilder: (context, index) {
                      final categ = categories!.categories[index];
                      if (categ.strCategory != "Pork") {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 600),
                          child: SlideAnimation(
                            verticalOffset: 50.h,
                            child: FadeInAnimation(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    AnimNavigator(
                                      FoodsPage(
                                        categorie: categ.strCategory,
                                      ),
                                    ),
                                  );
                                },
                                onLongPress: () {
                                  showAdaptiveDialog(
                                      barrierColor: const Color(0xff70b9be)
                                          .withOpacity(.15),
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog.adaptive(
                                          backgroundColor:
                                              const Color(0xff70b9be),
                                          title: Center(
                                            child: Text(
                                              categ.strCategory,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          content: SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                2.5,
                                            child: SingleChildScrollView(
                                              child: Text(
                                                categ.strCategoryDescription,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 12.h,
                                  ),
                                  child: Card(
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: categ.strCategoryThumb,
                                            width: MediaQuery.sizeOf(context)
                                                .width
                                                .w,
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                3.h,
                                            fit: BoxFit.fitHeight,
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context)
                                              .width
                                              .w,
                                          height: MediaQuery.sizeOf(context)
                                                  .height /
                                              3.h,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(.35),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text(
                                              categ.strCategory,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.overline,
                                                decorationColor:
                                                    const Color(0xff70b9be),
                                                decorationThickness: 2,
                                                decorationStyle:
                                                    TextDecorationStyle.solid,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
