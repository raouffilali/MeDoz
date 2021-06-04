import 'package:flutter/material.dart';

class Billan extends StatefulWidget {
  @override
  _BillanState createState() => _BillanState();
}

class _BillanState extends State<Billan> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: new Container(
                child: Center(
                  child: Text(
                    'Medoz',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Aclonica',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                height: 350.0,
                decoration: new BoxDecoration(
                  color: Color(0xff2F5E60),
                  boxShadow: [new BoxShadow(blurRadius: 40.0)],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                ),
              ),
            ),
            backgroundColor: Color(0xFFFDF2D6),
            body: SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text('TAPEZ VALEURS DE BILLAN',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 30.0,
                          fontFamily: 'OdibeeSans',
                          color: Colors.blueGrey[600],
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    analyse('entrer valeur clairance renale'),
                    SizedBox(
                      height: 10,
                    ),
                    analyse('entrer valeur bilirubine'),
                    SizedBox(
                      height: 10,
                    ),
                    analyse('entrer valeur tgo/tgp'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Infos patient:',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 30.0,
                          fontFamily: 'OdibeeSans',
                          color: Colors.blueGrey[600],
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Flexible(
                            child: new TextField(
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'AbrilFatface',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hasFloatingPlaceholder: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  labelText: 'nom',
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'AbrilFatface',
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          new Flexible(
                            child: new TextField(
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'AbrilFatface',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                                decoration: InputDecoration(
                                  hasFloatingPlaceholder: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  labelText: 'prenom',
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'AbrilFatface',
                                  ),
                                )),
                          ),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        keyboardType: TextInputType.datetime,
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
                            borderSide:
                                BorderSide(color: Colors.black12, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          labelText: 'date de naissance',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'AbrilFatface',
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 150,
                            child: FloatingActionButton.extended(
                                backgroundColor: Color(0xffebc042),
                                onPressed: () {},
                                label: Text(
                                  'Editer',
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            child: FloatingActionButton.extended(
                                backgroundColor: Color(0xffd96611),
                                onPressed: () {},
                                label: Text(
                                  'Suprimer',
                                )),
                          )
                        ]),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 70,
                      width: 200,
                      child: FloatingActionButton.extended(
                          backgroundColor: Color(0xff3c767a),
                          onPressed: () {},
                          label: Text(
                            'Submit',
                          )),
                    )
                  ]),
            )));
  }
}
