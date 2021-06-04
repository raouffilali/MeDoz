import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Medicament extends StatefulWidget {
  @override
  _MedicamentState createState() => _MedicamentState();
}

class _MedicamentState extends State<Medicament> {
  Widget analyse(val) {
    return TextFormField(
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Pattaya',
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hasFloatingPlaceholder: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        labelText: val,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20,
          fontFamily: 'Pattaya',
        ),
      ),
    );
  }

  int _currentIndex = 0;
  final tabs = [
    Column(children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'List des Medicaments:',
          style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w600,
            fontSize: 40,
            fontFamily: 'OdibeeSans',
          ),
        ),
      ),
    ]),
    Center(
      child: Container(
        child: Text('SEARCH'),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0, bottom: 12),
              child: Text(
                'Ajouter les Medicaments',
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  fontFamily: 'OdibeeSans',
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'AbrilFatface',
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                labelText: 'Entrer le nom de medicament:',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'AbrilFatface',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'AbrilFatface',
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                labelText: 'Entrer la dose aproprié:',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'AbrilFatface',
                ),
              ),
            ),
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
                    'Ajouter',
                  ),
                  icon: const Icon(Icons.add_box_rounded),
                  backgroundColor: Color(0XFFF1B914),
                ),
              ),
            ),
          ],
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            elevation: 10,
            shadowColor: Color(0xffEA7327),
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(140),
                // bottomRight: Radius.circular(50),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/med.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                // bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Color(0xFFD8630E),
          backgroundColor: Color(0xff2F5E60),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Rechercher ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: 'Ajouter Medicament',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex],
      ),
    );
  }
}
