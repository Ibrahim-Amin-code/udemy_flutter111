import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/layout/shop_app/cubit/cubit.dart';
import 'package:udemy_flutter111/layout/shop_app/cubit/states.dart';
import 'package:udemy_flutter111/modules/shop_app/search/search_screen.dart';
import 'package:udemy_flutter111/shared/components/components.dart';


class ShopLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit , ShopStates>(
      listener: (context , state)
      {

      },
      builder: (context , state)
      {
        var cubit = ShopCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('Salla',),
            actions: [
              IconButton(onPressed: (){
                navigateTo(context, SearchScreen(),);
              },
                  icon: Icon(Icons.search))
            ],
          ),
          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index)
            {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            items: 
          [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Categories'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],),
        );
      },

    );
  }
}
