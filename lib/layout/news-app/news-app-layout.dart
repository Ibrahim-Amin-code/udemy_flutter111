import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/cubit.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/states.dart';
import 'package:udemy_flutter111/modules/search/search_screen.dart';
import 'package:udemy_flutter111/shared/components/components.dart';
import 'package:udemy_flutter111/shared/cubit/cubit.dart';
import 'package:udemy_flutter111/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatefulWidget
{
  @override
  _NewsLayoutState createState() => _NewsLayoutState();
}

class _NewsLayoutState extends State<NewsLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context , state)
      {

      },
      builder: (context , state)
      {
        var cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title:Text('News App'),
            actions: [
              IconButton(
                  icon: Icon(Icons.search,size: 30,),
                  onPressed:()
                  {
                    navigateTo(context, SearchScreen(),);
                  },
              ),
              IconButton(
                  icon: Icon(
                    Icons.brightness_4_outlined,
                    size: 30,
                  ),
                  onPressed:()
                  {
                    AppCubit.get(context).changeAppMode();
                  },
              ),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index)
            {
              cubit.changeBottomNavBar(index);
            },
            items: cubit.bottomItems,
          ),
        );
      },

      // child: Scaffold(
      //   appBar: AppBar(
      //     title:Text('NewsApp'),
      //   ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     items: ,
      //   ),
      // ),
    );
  }
}
