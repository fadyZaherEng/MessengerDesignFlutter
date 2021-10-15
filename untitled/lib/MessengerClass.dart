import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 21.0,
              backgroundImage: NetworkImage(
                  'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            radius: 20.0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                )),
          ),
          const SizedBox(
            width: 7.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            radius: 20.0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsetsDirectional.only(
                start: 7.0,
                end: 7.0,
                top: 5.0,
                bottom: 5.0,
              ),
              margin: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 7.0,
                top: 5.0,
                bottom: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(7.0),
                    topStart: Radius.circular(7.0),
                    bottomEnd: Radius.circular(7.0),
                    bottomStart: Radius.circular(7.0)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 15.0),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 130.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoreItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: 15),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: 30),
          ],
        ),
      ),
    );
  }

  Widget buildChatItem() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    end: 3.0,
                    bottom: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.black.withOpacity(0.4),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    end: 3.0,
                    bottom: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Fady Zaher Halim Fady Zaher Halim Fady Zaher Halim Fady Zaher Halim',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Hello My Dad !! Hello My Dad !! Hello My Dad !! Hello My Dad !!',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          '03.5 PM',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget buildStoreItem() => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.0,
              margin: EdgeInsetsDirectional.only(
                top: 6.0,
                end: 6.0,
                bottom: 6.0,
                start: 6.0,
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg'),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(
                          end: 3.0,
                          bottom: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fady Zaher Halim",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
