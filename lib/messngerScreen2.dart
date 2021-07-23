import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=GddOdAYdafsAX-BGiPL&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=e05a81c721170507324bdc1646866549&oe=60EA7CB5'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chat',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                )),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.edit,
                  size: 20,
                )),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => buildStoryItem(),
                  separatorBuilder: (context , index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context , index) => buildChatItem(),
                  separatorBuilder: (context , index) => SizedBox(
                    height: 20,
                  ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=GddOdAYdafsAX-BGiPL&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=e05a81c721170507324bdc1646866549&oe=60EA7CB5'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3,
              end: 3,
            ),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 3,
              bottom: 3,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ibrahim amin ibrahim amin ibrahim amin ibrahim amin ibrahim amin',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(

                  child: Text(
                    'Hello My name is ibrahim mohamed amin Abdelhaleem mohamed amin',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text('02:00'),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem() =>  Container(
    width: 60,
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=GddOdAYdafsAX-BGiPL&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=e05a81c721170507324bdc1646866549&oe=60EA7CB5'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                end: 3,
                bottom: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text('Ibrahim Amin Ibrahim Amn',
          maxLines: 2, overflow: TextOverflow.ellipsis,),
      ],
    ),
  );



}
