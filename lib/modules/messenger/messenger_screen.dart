import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 15,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t31.18172-8/13923738_1756118241322789_2618883791658066108_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=174925&_nc_ohc=x67rqYpf6U0AX-WPZo0&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=278f1df671721fefa0b8ddb2b7e9be56&oe=60E9B717'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(radius: 20, child: Icon(Icons.camera_alt)),
            onPressed: () {},
            color: Colors.white,
            iconSize: 20,
          ),
          IconButton(
            icon: CircleAvatar(radius: 20, child: Icon(Icons.edit)),
            onPressed: () {},
            color: Colors.white,
            iconSize: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(
                  height: 15,
                ),
            Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (contect,index) => buildStroyItem(),
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
                separatorBuilder: (context , index) => SizedBox(height: 20,) ,
                itemCount: 15 ,
            ),
            


            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Container(
            //         width: 60,
            //         child: Column(
            //           children: [
            //             Stack(
            //               alignment: AlignmentDirectional.bottomEnd,
            //               children: [
            //                 CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: NetworkImage(
            //                       'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     bottom: 3,
            //                     end: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 7,
            //                     backgroundColor: Colors.white,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsetsDirectional.only(
            //                     end: 3,
            //                     bottom: 3,
            //                   ),
            //                   child: CircleAvatar(
            //                     radius: 6,
            //                     backgroundColor: Colors.green,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             Text(
            //               'Ibarhim Amin Ibarhim Amin',
            //               maxLines: 2,
            //               overflow: TextOverflow.ellipsis,
            //             ),
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //     ],
            //   ),
            //
            // ),
            //     Expanded(
            //       child: SingleChildScrollView(
            //         child: Column(
            //           children: [
            //
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             Row(
            //               children: [
            //                 Stack(
            //                   alignment: AlignmentDirectional.bottomEnd,
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30,
            //                       backgroundImage: NetworkImage(
            //                           'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-1/p240x240/123028794_2763422133925723_8800793173571805027_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=7206a8&_nc_ohc=syQWyRub8FYAX84VdGR&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent.fcai21-1.fna&tp=6&oh=29bb0f2352f40132582f44821abd9613&oe=60E4B231'),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         bottom: 3,
            //                         end: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 7,
            //                         backgroundColor: Colors.white,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsetsDirectional.only(
            //                         end: 3,
            //                         bottom: 3,
            //                       ),
            //                       child: CircleAvatar(
            //                         radius: 6,
            //                         backgroundColor: Colors.green,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Ibrahim Amin', style: TextStyle(
            //                           fontSize: 15,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                         maxLines: 1,
            //                         overflow: TextOverflow.ellipsis,),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       Row(
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
            //                               maxLines: 2,
            //                               overflow: TextOverflow.ellipsis,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Container(
            //                               width: 7,
            //                               height: 7,
            //                               decoration: BoxDecoration(
            //                                 color: Colors.blue,
            //                                 shape: BoxShape.circle,
            //                               ),
            //                             ),
            //
            //                           ),
            //                           Text('02:00 pm'),
            //
            //
            //                         ],
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //
            //           ],
            //         ),
            //       ),
            //     ),

          ]),
        ),
      ),
    );
  }

  /*

  * * ListView :-

  * 1 => biuld item

  * 2 => build list

  * 3 => add item to list

  * */

  // arrow function            build item
  Widget buildChatItem()   =>   Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t31.18172-8/13923738_1756118241322789_2618883791658066108_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=174925&_nc_ohc=x67rqYpf6U0AX-WPZo0&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=278f1df671721fefa0b8ddb2b7e9be56&oe=60E9B717'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3,
              end: 3,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 3,
              bottom: 3,
            ),
            child: CircleAvatar(
              radius: 6,
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
              'Ibrahim Amin',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    'Hello My Name Is Ibrahim Mohamed Amin Abdelhaleem Falous And Iam 25 Years Old From Mansoura',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02:00 pm'),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  // arrow function            build item
  Widget buildStroyItem() =>  Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t31.18172-8/13923738_1756118241322789_2618883791658066108_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=174925&_nc_ohc=x67rqYpf6U0AX-WPZo0&tn=N9hRR5ZHbGRo-l0l&_nc_ht=scontent-hbe1-1.xx&oh=278f1df671721fefa0b8ddb2b7e9be56&oe=60E9B717'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                end: 3,
                bottom: 3,
              ),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Ibarhim Amin Ibarhim Amin',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );


}
