import 'package:flutter/material.dart';

class DoctorInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFDF2D6)),
      home: DoctorInfos1(),
    );
  }
}

class DoctorInfos1 extends StatefulWidget {
  @override
  _DoctorInfos1State createState() => _DoctorInfos1State();
}

class _DoctorInfos1State extends State<DoctorInfos1> {
  Widget info(String variable) {
    return TextFormField(
      decoration: InputDecoration(
        hasFloatingPlaceholder: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyanAccent.shade400, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        labelText: variable,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              onPressed: () {}),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          shadowColor: Colors.blueGrey,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                'Medoz',
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'Aclonica',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xFF448387),
        ),
        backgroundColor: Color(0xFFFDF2D6),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/icondoctor.jpg'),
                    radius: 90.0,
                  ),
                ),
              ),
              Text(
                "Doctor infos",
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'AbrilFatface',
                  color: Colors.blueGrey[600],
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              info("entrer votre nom"),
              SizedBox(
                height: 10,
              ),
              info("entrer votre prenom"),
              SizedBox(
                height: 10,
              ),
              info("entrer votre specialité"),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  height: 65,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    label: const Text(
                      'Confirmer',
                      style: TextStyle(fontSize: 20),
                    ),
                    backgroundColor: Colors.teal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  height: 65,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    label: const Text(
                      'Liste des medicaments',
                      style: TextStyle(fontSize: 20),
                    ),
                    backgroundColor: Color(0xFFD8630E),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
