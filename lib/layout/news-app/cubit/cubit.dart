
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/states.dart';
import 'package:udemy_flutter111/modules/news_app/business/business-screen.dart';
import 'package:udemy_flutter111/modules/news_app/science/science_screen.dart';
import 'package:udemy_flutter111/modules/news_app/sports/sport-screen.dart';

import 'package:udemy_flutter111/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon:Icon(Icons.business),
      label: 'Business'
    ),
    BottomNavigationBarItem(
        icon:Icon(Icons.sports),
        label: 'Sports',
    ),
    BottomNavigationBarItem(
        icon:Icon(Icons.science),
        label: 'Science',
    ),
  ];
    List<Widget> screens = [
      BusinessScreen(),
      SportsScreen(),
      ScienceScreen(),
    ];


  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    if(index == 1)
      getSports();
    if(index == 2)
      getScience();
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness()
  {
    emit(NewsGetSportsLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'business',
        'apiKey': '85967d8af8d34e0c85fdcb5e846217a7',
      },
    ).then((value) {
      // print(value.data['articles'][2]['title']);
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }


  List<dynamic> sports = [];

  void getSports()
  {
    emit(NewsGetSportsLoadingState());
      if(sports.length == 0)
      {
        DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country': 'eg',
            'category': 'sports',
            'apiKey': '85967d8af8d34e0c85fdcb5e846217a7',
          },
        ).then((value) {
          // print(value.data['articles'][2]['title']);
          sports = value.data['articles'];
          print(sports[0]['title']);
          emit(NewsGetSportsSuccessState());
        }).catchError((error) {
          print(error.toString());
          emit(NewsGetSportsErrorState(error.toString()));
        });
      }else
      {
        emit(NewsGetSportsSuccessState());
      }
  }


  List<dynamic> science = [];

  void getScience()
  {

    emit(NewsGetScienceLoadingState());

    if(science.length == 0)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'science',
          'apiKey': '85967d8af8d34e0c85fdcb5e846217a7',
        },
      ).then((value) {
        // print(value.data['articles'][2]['title']);
        science = value.data['articles'];
        print(science[0]['title']);
        emit(NewsGetScienceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetScienceErrorState(error.toString()));
      });
    }else
      {
        emit(NewsGetScienceSuccessState());
      }
  }

  List<dynamic> search = [];

  void getSearch(String value)
  {
    emit(NewsGetSearchLoadingState());

    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q': '$value',
        'apiKey': '85967d8af8d34e0c85fdcb5e846217a7',
      },
    ).then((value) {
      // print(value.data['articles'][2]['title']);
      search = value.data['articles'];
      print(search[0]['title']);
      emit(NewsGetSearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetSearchErrorState(error.toString()));
    });
  }










}