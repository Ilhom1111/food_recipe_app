import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/categories_bloc/categories_bloc.dart';
import '../blocs/countries_bloc/countries_bloc.dart';
import '../constants/flags.dart';
import '../models/countries/countries_meals.dart';
import '../views/loading.dart';
import 'anim_navigator.dart';
import 'countries_foods_page.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  Countries? countries;

  @override
  void initState() {
    context.read<CountriesBloc>().add(const CountriesParsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff70b9be),
        title: Text(
          "Food Recipe",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
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
          BlocListener<CountriesBloc, CountriesState>(
            listener: (context, state) async {
              if (state is CountriesFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message)));
              }

              if (state is CreateCountriesSuccess) {
                countries = state.countries;
              }
            },
          ),
        ],
        child: BlocBuilder<CountriesBloc, CountriesState>(
          builder: (context, state) {
            if (state is CategoriesLoading) {
              return const Loading();
            } else {
              if (countries != null) {
                return ListView.builder(
                  itemCount: Flags.images.length,
                  itemBuilder: (context, index) {
                    final countrie = countries!.meals[index];
                    String image = Flags.images[index];
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
                                  CountriesFoodsPage(
                                    countries: countrie.strArea,
                                  ),
                                ),
                              );
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
                                      borderRadius: BorderRadius.circular(16),
                                      child: CachedNetworkImage(
                                        imageUrl: image,
                                        width:
                                            MediaQuery.sizeOf(context).width.w,
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                3.h,
                                        fit: BoxFit.fill,
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width.w,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              3.h,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.35),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Center(
                                        child: Text(
                                          countrie.strArea,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 26.sp,
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.overline,
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
                  },
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
