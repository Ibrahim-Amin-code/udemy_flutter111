import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy_flutter111/models/users/user_model.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.phone,
    @required this.name,
    @required this.id
});
}

class UsersScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
      phone: '+201022952483',
      name: 'Mr Hema',
      id: 1,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr David',
      id: 2,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr Hema David',
      id: 3,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr Ibrahim',
      id: 4,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr Hema',
      id: 5,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr Mohamed',
      id: 3,
    ),
    UserModel(
      phone: '+201022952483',
      name: 'Mr Mohamed Amin',
      id: 7,
    ),

  ];

  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
         itemBuilder: (context , index) => buildUserItem(
           users[index]
         ),
          separatorBuilder: (context , index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ) ,
          itemCount: users.length,
      ),
    );
  }

Widget buildUserItem(UserModel userModel) => Padding(
  padding: const EdgeInsets.all(20),
  child: Row(

    children: [
      CircleAvatar(
        radius: 25,
        child: Text(
          '${userModel.id}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${userModel.name}' ,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${userModel.phone}',
            style: TextStyle(color: Colors.grey),),
        ],
      ),
    ],
  ),
);

}














/*
* class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
     id: 1,
    name: 'Ibrahim Amin',
    phone: '+020102295483',
    ),
    UserModel(
      id: 2,
      name: 'Nada Amin',
      phone: '+020102154783',
    ),
    UserModel(
      id: 3,
      name: 'Aya Amin',
      phone: '+020265895483',
    ),
    UserModel(
      id: 4,
      name: 'Mohamed Amin',
      phone: '+020105875483',
    ),
    UserModel(
      id: 5,
      name: 'Ali Amin',
      phone: '020102298745'
    ),
    UserModel(
      id: 1,
      name: 'Ibrahim Amin',
      phone: '+020102295483',
    ),
    UserModel(
      id: 2,
      name: 'Nada Amin',
      phone: '+020102154783',
    ),
    UserModel(
      id: 3,
      name: 'Aya Amin',
      phone: '+020265895483',
    ),
    UserModel(
      id: 4,
      name: 'Mohamed Amin',
      phone: '+020105875483',
    ),
    UserModel(
        id: 5,
        name: 'Ali Amin',
        phone: '020102298745'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context , index) => buildUserItem(users[index]),
          separatorBuilder: (context , index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel userModel ) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${userModel.id}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${userModel.name}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              '${userModel.phone}' , style: TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    ),
  );

}
*/