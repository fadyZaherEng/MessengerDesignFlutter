import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ContactModel.dart';

class ContactApp extends StatelessWidget
{
  List<ContactModel> Contacts=
  [
    ContactModel(
        id: 1,
        Name: 'Fady Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 2,
        Name: 'Ali Ahmed',
        Phone: '01255521661'
    ),
    ContactModel(
        id: 3,
        Name: 'Hassan Ali',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 4,
        Name: 'Ghaly Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 5,
        Name: 'Fathy Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 6,
        Name: 'Mina Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 7,
        Name: 'Farid Shawkey',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 1,
        Name: 'Fady Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 2,
        Name: 'Ali Ahmed',
        Phone: '01255521661'
    ),
    ContactModel(
        id: 3,
        Name: 'Hassan Ali',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 4,
        Name: 'Ghaly Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 5,
        Name: 'Fathy Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 6,
        Name: 'Mina Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 7,
        Name: 'Farid Shawkey',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 1,
        Name: 'Fady Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 2,
        Name: 'Ali Ahmed',
        Phone: '01255521661'
    ),
    ContactModel(
        id: 3,
        Name: 'Hassan Ali',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 4,
        Name: 'Ghaly Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 5,
        Name: 'Fathy Gerges',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 6,
        Name: 'Mina Zaher',
        Phone: '01205221661'
    ),
    ContactModel(
        id: 7,
        Name: 'Farid Shawkey',
        Phone: '01205221661'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
            'Contacts',
           style: TextStyle(
            color: Colors.white.withOpacity(0.8),
        ),
        ),

      ),
      body:
      ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index)=>buildContactMethod(Contacts[index]),
          separatorBuilder:(context,index)=>const SizedBox(height: 2,),
          itemCount: Contacts.length)

    );
  }
  Widget buildContactMethod(ContactModel model)=>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children:
      [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 25.0,
            backgroundColor:Colors.teal,
            child: Center(
              child: Text(
                '${model.getId()}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,

              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '${model.Name}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                  textAlign: TextAlign.center,

                ),
              ),
              Text(
                '${model.Phone}',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,

              ),
            ],
          ),
        ),
      ],
    ),
  );

}