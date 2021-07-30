import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('This IconMenu From IconButton');
          },
        ),
        title: Text('Hello Mrs: Nermeen'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.notification_important),
              onPressed: () {
                print('This is From IcoButton');
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('This is Research From IcoButton');
              }),
        ],
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 40,
                top: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-9/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&oh=5b7a3488c318b4e2c5fff815fc31ddb4&oe=60E293B5'),
                      width: 300,
                      height: 300,
                    ),
                    Container(
                      width: 300,
                      color: Colors.grey.withOpacity(.4),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text('Ibraim',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 40,
              ),
              child: Container(
                width: 300,
                child:  Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    'Yes, we made a lot of mistakes, and there are things we regret doing, but we learn, apologize and change. We are not without flaws or mistakes, so we are still under the name of a human being.'
                                  ' Malcom X'
                      ,style: TextStyle(fontSize: 30,color: Colors.purple.withOpacity(.8)),),
                ),
                ),
              ),
          ],
        ),
    );
  }
}

/*
*  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration:
                  BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(20),
                        bottomEnd:  Radius.circular(20),
                      )),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                      'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-9/164502245_286033449553012_515139086040467746_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=FnT9dZEZ8LsAX_bE_hr&_nc_ht=scontent.fcai21-1.fna&oh=27e852b5595c46684829ba2555d8008b&oe=60E281D6',
                    ),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    color: Colors.black,
                    width: 200,
                    child: Text(
                      'Flower',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
* */
