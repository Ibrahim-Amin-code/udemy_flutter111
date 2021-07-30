import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter111/shared/components/components.dart';
import 'package:udemy_flutter111/shared/cubit/cubit.dart';
import 'package:udemy_flutter111/shared/cubit/states.dart';

class HomeLayout extends StatelessWidget

{

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) =>AppCubit()..createDatabase(),

      child: BlocConsumer<AppCubit , AppStates>(
        listener: (BuildContext context , AppStates state )
        {
            if(state is AppInsertDatabaseState)
            {
              Navigator.pop(context);
            }
        } ,
        builder: (BuildContext context , AppStates state )
        {

          AppCubit cubit = AppCubit.get(context);

          return  Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
            ),
            body: ConditionalBuilder(
              condition: state is! AppGetDatabaseLoadingState,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState.validate()) {
                    // insertToDatabase(

                    //   title: titleController.text,
                    //   time: timeController.text,
                    //   date: dateController.text,
                    // ).then((value) {
                    //   getDataFromDatabase(database).then((value) {
                    //     Navigator.pop(context);
                    //     // setState(() {
                    //     //   isBottomSheetShown = false;
                    //     //   fabIcon = Icons.edit;
                    //     //   tasks =value;
                    //     //   print(tasks);
                    //     // });
                    //   });
                    //   Navigator.pop(context);
                    //   isBottomSheetShown = false;
                    //   // setState(() {
                    //   //   fabIcon = Icons.edit;
                    //   // });
                    // });
                    cubit.insertToDatabase(
                        title: titleController.text,
                        time: timeController.text,
                        date: dateController.text,
                    );
                  }
                } else {
                  scaffoldKey.currentState
                      .showBottomSheet(
                        (context) =>
                        Container(

                          color: Colors.white,
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormFiled(
                                  controller: titleController,
                                  type: TextInputType.text,
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'Title Must Not Be Empty';
                                    } else {
                                      return null;
                                    }
                                  },
                                  label: 'Task Title',
                                  prefix: Icons.title,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                defaultFormFiled(
                                  controller: timeController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      timeController.text =
                                          value.format(context).toString();
                                      print(value.format(context));
                                    });
                                  },
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'Time Must Not Be Empty';
                                    } else {
                                      return null;
                                    }
                                  },
                                  label: 'Task Time',
                                  prefix: Icons.watch_later_outlined,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                defaultFormFiled(
                                  controller: dateController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2021-08-13'),
                                    ).then((value) {
                                      dateController.text =
                                          DateFormat.yMMMd().format(value);
                                      print(DateFormat.yMMMd().format(value));
                                    });
                                  },
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'Date Must Not Be Empty';
                                    } else {
                                      return null;
                                    }
                                  },
                                  label: 'Task Date',
                                  prefix: Icons.calendar_today,
                                ),
                              ],
                            ),
                          ),
                        ),
                    elevation: 20,
                  )
                      .closed
                      .then((value) {
                    cubit.changeBottomSheetState(
                      isShow: false,
                      icon: Icons.edit,
                    );
                  });
                  cubit.changeBottomSheetState(
                    isShow: true,
                    icon: Icons.add,
                  );
                }
              },
              child: Icon(cubit.fabIcon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'New Tasks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.check_circle_outline),
                    label: 'Done Tasks '),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive),
                    label: 'Archived Tasks'),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          );
        },

      ),
    );
  }




  Future <String> getName() async {
    return ' Ibrahim Amin';
  }





/*

*  if (isBottomSheetShown) {
              if(formKey.currentState.validate()){
                insertDatabase(
                  date: dateController.text,
                  time: titleController.text,
                  title: titleController.text,
                ).then((value)
                {
                  Navigator.pop(context);
                  isBottomSheetShown = false;
                  setState(() {
                    fabIcon = Icons.edit;
                  });
                });
              }
           } else {
              scaffoldKey.currentState.showBottomSheet((context)
              => Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Form(
                  key: formKey ,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          defaultFormFiled(
                            controller: titleController,
                            type: TextInputType.text,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'title must not be empty';
                              }{
                                return null;
                              }
                            },
                            label: 'title task',
                            prefix: Icons.title,
                          ),


                      SizedBox(
                            height: 20,
                          ),

                          defaultFormFiled(
                            controller: timeController,
                            type: TextInputType.datetime,
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                timeController.text = value.format(context).toString();
                                print(value.format(context).toString());
                              });
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'time must not be empty';
                              }{
                                return null;
                              }
                            },
                            label: 'time task',
                            prefix: Icons.watch_later_outlined,
                          ),

                      SizedBox(
                           height: 20,
                        ),

                        defaultFormFiled(
                        controller: dateController,
                        type: TextInputType.datetime,
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.parse('2021-08-11'),
                          ).then((value) {
                            dateController.text = DateFormat.yMMMd().format(value);
                          });
                        },
                        validate: (String value) {
                          if (value.isEmpty) {
                            return 'date must not be empty';
                          }{
                            return null;
                          }
                        },
                        label: 'date task',
                        prefix: Icons.calendar_today,
                      )
                        ],
                      ),
                ),
                  ),
                  elevation: 15,
              ).closed.then((value) {
                isBottomSheetShown = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              });
              isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
            }
            * */










// Future insertDatabase({
// @required String title,
// @required String time,
// @required String date,
//
// }) async {
//   return await database.rawInsert(
//       'INSERT INTO tasks(title,time,date,status) VALUES("$title","$time","$date","new")'
//   ).then((value) {
//     print(' $value Inserted Successfully');
//   }).catchError((error){
//     print('Error happened when inserting new record ${error.toString()}');
//   });
//
// }



}











 /*
 * import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter111/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:udemy_flutter111/modules/done_etasks/done_tasks_screen.dart';
import 'package:udemy_flutter111/modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async
        {
         var name = await getName();
          print(name);
        },
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(

        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

// Instance of 'Future<String>'

  Future<String> getName() async
  {
    return 'Ibrahim Amin ';
  }

}
*/