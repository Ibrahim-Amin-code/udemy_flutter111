import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/cubit.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/states.dart';
import 'package:udemy_flutter111/shared/components/components.dart';

class BusinessScreen extends StatefulWidget {

  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener:(context , state){},
      builder :(context , state)
    {
      var list = NewsCubit.get(context).business;
      return  articleBuilder(list,context);
    },
    );
  }
}
