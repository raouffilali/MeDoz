import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class AboutUs extends StatelessWidget {
  final String versionCounter = 'Version : 1.0.0';
  final List<Color> colour = [
    Color(0xff2F6E60),
    Color(0xff4C9296),
    Color(0xff5a989c),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350.0),
        child: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 10,
                    ),
                    child: IconButton(
                      tooltip: "Return",
                      iconSize: 30,
                      onPressed: () {
                        print('touched botton');
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 37,
                    ),
                    child: Center(
                      child: Text('Retour',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                          )),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.fill)),
                ),
              )
            ],
          ),
          height: 350.0,
          decoration: new BoxDecoration(
            color: Color(0xff2F5E60),
            gradient: LinearGradient(
              colors: colour,
            ),
            boxShadow: [new BoxShadow(blurRadius: 40.0)],
            borderRadius: new BorderRadius.vertical(
                bottom: new Radius.elliptical(
                    MediaQuery.of(context).size.width, 100.0)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Text(
                versionCounter,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 3),
              child: Text(
                "© 2021-2020   MeDoz Application",
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              " Dévelopé en Algerie",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Condition d\'utilisation',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11, bottom: 11),
              child: Text(
                'Politique de confidentialité',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                thickness: 2.0,
                color: Colors.black26,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SignInButtonBuilder(
              text: 'Contact Us',
              icon: Icons.email,
              onPressed: () {},
              backgroundColor: Colors.blueGrey[700]!,
              width: 150,
            ),
            SignInButtonBuilder(
              backgroundColor: Colors.blue,
              onPressed: () {},
              text: 'Facebook Contact',
              icon: Icons.facebook_outlined,
            )
          ],
        ),
      ),
    );
  }
}
