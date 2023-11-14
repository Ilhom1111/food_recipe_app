import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blocs/categorie_foods_bloc/categorie_foods_bloc.dart';
import 'blocs/categories_bloc/categories_bloc.dart';
import 'blocs/countries_bloc/countries_bloc.dart';
import 'blocs/food_id_bloc/food_id_bloc.dart';
import 'blocs/search_bloc/search_bloc.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoriesBloc>(create: (_) => CategoriesBloc()),
        BlocProvider<CategorieFoodsBloc>(create: (_) => CategorieFoodsBloc()),
        BlocProvider<FoodIdBloc>(create: (_) => FoodIdBloc()),
        BlocProvider<SearchBloc>(create: (_) => SearchBloc()),
        BlocProvider<CountriesBloc>(create: (_) => CountriesBloc()),
      ],
      child: ScreenUtilInit(
        designSize: Size(MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Recipe',
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Colors.grey,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: const HomePage(),
      ),
    );
  }
}
