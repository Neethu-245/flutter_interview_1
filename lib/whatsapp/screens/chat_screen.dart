import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsApp(),
  ));
}

class whatsApp extends StatelessWidget {
  var name = [
    "Neethu",
    "Farsana",
    "Ashi",
    "Ayana",
    "Amma",
  ];

  var images = [
    "assets/images/istockphoto-484270482-612x612.jpg",
    "assets/images/Cartoons.jpeg",
    "assets/images/England.jpeg",
    "assets/images/music6.jpeg",
    "assets/images/music2.jpg",
  ];

  var msg = [
    "Hi",
    "Hello",
    "How are you",
    "kooi",
    "Evde",
  ];

  var time = [
    "10.00",
    "10.10",
    "10.45",
    "11.00",
    "11.30",
  ];

  var msgno = [
    "1",
    "1",
    "1",
    "1",
    "1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Whatsapp",
        ),
      ),
      body: ListView(
        children: List.generate(
          5,
          (index) => Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text(msg[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(images[index]),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(time[index]),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      minRadius: 6,
                      maxRadius: 12,
                      backgroundColor: Colors.green,
                      child: Text(msgno[index]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
