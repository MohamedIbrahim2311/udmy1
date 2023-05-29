import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MassangerScreen extends StatelessWidget {
  const MassangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/fit/c/176/176/1*vx4laUrLMT_BLDrMQeK0Tw.jpeg'),

            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,

              ),
            ),

          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: Icon(

              Icons.camera_alt,
              size: 20.0,
              color: Colors.white,
            ),
          ),
          ),
          IconButton(onPressed: () {}, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: Icon(

              Icons.edit,
              size: 20.0,
              color: Colors.white,
            ),
          ),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',

                      style: TextStyle(

                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 15.0,

              ),
              Container(

                height: 130.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)=> buitdStoryItem(),
                  separatorBuilder:(context,index)=> SizedBox(
                    width: 20.0,

                  ),
                  itemCount: 25,
                  ),

              ),
              SizedBox(
                height: 20.0,
              ),

                 ListView.separated(
                   physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true ,
                  itemBuilder: (context, index) => buildChatItem(),

                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 25,
                ),


              SizedBox(
                height: 30.0,

              ),


            ],
          ),
        ),


      ),

    );
  }

  Widget buildChatItem( ) =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/34492145?v=4'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tarek Hassan',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children:
                  [
                    Expanded(
                      child: Text(
                        'hello my name is abdullah ahmed hello my name is abdullah ahmed',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '02:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buitdStoryItem(
      ) =>
      Container(

        width: 60.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://miro.medium.com/fit/c/176/176/1*vx4laUrLMT_BLDrMQeK0Tw.jpeg'),

                ),

                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 5.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Mohamed  Ali ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

            ),
          ],
        ),
      );
  



}
