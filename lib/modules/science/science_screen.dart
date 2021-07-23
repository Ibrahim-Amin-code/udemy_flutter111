import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/cubit.dart';
import 'package:udemy_flutter111/layout/news-app/cubit/states.dart';
import 'package:udemy_flutter111/shared/components/components.dart';

class ScienceScreen extends StatefulWidget {

  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener:(context , state){},
      builder :(context , state)
      {
        var list = NewsCubit.get(context).science;
        return  articleBuilder(list,context);
      },
    );

  }
}
