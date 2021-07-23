
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udemy_flutter111/modules/counter/counter_screeen.dart';
import 'package:udemy_flutter111/modules/users/users_screen.dart';
import 'package:udemy_flutter111/shared/bloc_observer.dart';
import 'package:udemy_flutter111/shared/cubit/cubit.dart';
import 'package:udemy_flutter111/shared/cubit/states.dart';
import 'package:udemy_flutter111/shared/network/remote/cache_helper.dart';
import 'package:udemy_flutter111/shared/network/remote/dio_helper.dart';
import 'layout/news-app/cubit/cubit.dart';
import 'layout/news-app/news-app-layout.dart';
import 'layout/todo_app/todo_layout.dart';
import 'messngerScreen2.dart';
import 'modules/home/Home_Screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';

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

      providers:
      [
          BlocProvider(create: (context) => NewsCubit()..getBusiness()),
          BlocProvider(create: (BuildContext context) => AppCubit()..changeAppMode(
            fromShared: isDark,
          ),),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
         listener: (context , state) {} ,
          builder: (context , state)
          {
            return  MaterialApp (
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(        // فيه حجات خاصه بال appBar بس هتطبق علي الابلكيشن كله
                  iconTheme: IconThemeData(
                    color: Colors.black,
                  ),
                  backwardsCompatibility: false, // هنه بخليه false عشتان اقدر اتحكم في ال StatesBar
                  titleSpacing: 20,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.green, // ده ال بيتحكم في لون البار ال فوء خالص ال فيه الوقت والتاريخ
                      statusBarIconBrightness: Brightness.dark
                  ),
                  elevation: 0.0,
                  backgroundColor: Colors.white, // كده ده اتطبق في الابلكيشن كله
                  titleTextStyle: TextStyle(
                    color: Colors.black, // هنه بيتحكم ف لون كل ال texts ال موجوده في ال titles
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepOrange,
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.orange,
                  elevation: 20,
                  unselectedItemColor: Colors.grey,
                  backgroundColor:Colors.white,

                ),
                textTheme: TextTheme(
                  bodyText1: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              ),
              darkTheme: ThemeData(
                primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: HexColor('333739'),
                appBarTheme: AppBarTheme(   // فيه حجات خاصه بال appBar بس هتطبق علي الابلكيشن كله
                  titleSpacing: 20,
                  backwardsCompatibility: false, // هنه بخليه false عشتان اقدر اتحكم في ال StatesBar
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: HexColor('333739'), // ده ال بيتحكم في لون البار ال فوء خالص ال فيه الوقت والتاريخ
                      statusBarIconBrightness: Brightness.light
                  ),
                  elevation: 0.0,
                  backgroundColor: HexColor('333739'), // كده ده اتطبق في الابلكيشن كله
                  titleTextStyle: TextStyle(
                    color: Colors.white, // هنه بيتحكم ف لون كل ال texts ال موجوده في ال titles
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                ),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepOrange,
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  elevation: 20,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.orange,
                  unselectedItemColor: Colors.grey,
                  backgroundColor: HexColor('333739'),
                ),
                textTheme: TextTheme(
                  bodyText1: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),





              ),
              themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
              home: SafeArea(child: NewsLayout()),
            );
          },


      ),
    );

  }
 }