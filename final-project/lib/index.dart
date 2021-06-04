import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Text TextBuilde(String text, TextStyle deco) {
    return Text(
      text,
      style: deco,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 30),
                child: Text(
                  'MeDoz',
                  style: TextStyle(fontFamily: "Aclonica", fontSize: 25),
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: IconButton(
                tooltip: "About Us ..",
                onPressed: () {},
                icon: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 33,
                ),
              ),
            ),
            actions: [
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  print('i touched this icon ');
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/image3.jpg'),
                  radius: 30,
                ),
              ),
            ],
            backgroundColor: Color(0xFF2C6155),
            elevation: 10,
            shadowColor: Color(0xffEA7327),
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    TextBuilde(
                        'MeDoz Application',
                        TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextBuilde(
                      'La première application de médicaments  ',
                      TextStyle(
                        fontSize: 15,
                        color: Colors.black38,
                      ),
                    ),
                    TextBuilde(
                      ' pour les médecins  ',
                      TextStyle(
                        fontSize: 15,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextBuilde(
                      'En Algerie ',
                      TextStyle(fontSize: 14, color: Colors.black38),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 200.0,
                      child: Divider(
                        thickness: 2.0,
                        color: Color(0xffB9BBBD),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 55,
                  left: 20,
                  right: 20,
                ),
                height: 330,
                width: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        label: const Text(
                          'Commencer',
                        ),
                        icon: const Icon(Icons.add_box_rounded),
                        backgroundColor: Color(0XFFd96611),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
