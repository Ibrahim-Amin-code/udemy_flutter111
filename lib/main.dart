
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/shared/bloc_observer.dart';
import 'package:udemy_flutter111/shared/cubit/cubit.dart';
import 'package:udemy_flutter111/shared/cubit/states.dart';
import 'package:udemy_flutter111/shared/network/remote/cache_helper.dart';
import 'package:udemy_flutter111/shared/network/remote/dio_helper.dart';
import 'package:udemy_flutter111/shared/styles/themes.dart';
import 'layout/news-app/cubit/cubit.dart';
import 'modules/shop_app/on_boarding/on_boarding_screen.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized(); //طالما ان ال void main  بقت async وفيها ميثود  await  فلازم هنه ال Widget دي
  Bloc.observer = MyBlocObserver();
  DioHelper.inti();
  await CacheHelper.init();
  bool isDark = CacheHelper.getBooleana(key: 'isDark');

  runApp(MyApp(isDark));
}

 class MyApp extends StatelessWidget
 {
  final bool isDark;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsCubit()..getBusiness()),
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDark,
            ),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: SafeArea(child: OnBoardScreen()),
          );
        },
      ),
    );
  }
}