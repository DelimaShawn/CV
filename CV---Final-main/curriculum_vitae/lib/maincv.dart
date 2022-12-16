import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Text(
                  'Shawn Michael T. Delima',
                  style: TextStyle(
                    fontFamily: 'Orpheus',
                    fontSize: 27.0,
                    color: Color.fromARGB(255, 252, 250, 250),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'ABOUT ME:',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color.fromARGB(255, 252, 253, 253),
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.account_box,
                  ),
                  label: Text('PERSONAL INFORMATION'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(221, 167, 95, 137),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.school,
                  ),
                  label: Text('EDUCATION BACKGROUND'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(221, 167, 95, 137),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.laptop,
                  ),
                  label: Text('INDIVIDUAL SKILLS'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(221, 167, 95, 137),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  ),
                ), // ElevatedButton
                Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: Text('Logout'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Color.fromARGB(221, 167, 95, 137),
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.female,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  '+639075202519',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Number"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.female,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'shawnmiked5@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Email"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.female,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Male',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Gender"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.cake,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'October 12, 2001',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Birthday"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  "#364 Malabago, Calasiao, Pangasinan",
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Address"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.flag,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Filipino',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Citizenship"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.single_bed_rounded,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Single',
                  style: TextStyle(
                    color: Color.fromARGB(202, 23, 113, 141),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Status"),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 38, 49),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 38, 49),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology 2019-2023'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 1, 38, 49),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Comprehensive National High School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 38, 49),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2017-2020'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Doyong-Malabago National High School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 38, 49),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2013-2017'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 1, 38, 49),
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 1, 38, 49),
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Don German, Elementary School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 38, 49),
                    fontFamily: 'Times New Roman',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2007-2012'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Excellent written and verbal communication skills ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 1, 38, 49),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Highly organized and efficient ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 1, 38, 49),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Ability to work independently ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 1, 38, 49),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Service-focused ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 1, 38, 49),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '~ Proven leadership skills ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 1, 38, 49),
                        fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
            ]),
      ),

      /// AppBar
    ); // Scaffold
  }
}
