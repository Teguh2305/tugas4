import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void myDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext konteks) {
        return AlertDialog(
          title: Text('Hubungi Kami'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Set the mainAxisSize to min to wrap content
            children: [
              Text('Hubungi Kami di Mteguh.pribadi230598@gmail.com'),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4jYa1RCmQp9NRGk7vAkmWsBc2HfrAaVdmQ&usqp=CAU',
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(konteks).pop(),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Travel Indonesia'), // Fixed the typo in the app bar title
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Nama : Moh Teguh Pribadi'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
                  child: Text('Nim : 19201132'),
                ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
            child: Text('Usaha Travel'),
          ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4jYa1RCmQp9NRGk7vAkmWsBc2HfrAaVdmQ&usqp=CAU',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4jYa1RCmQp9NRGk7vAkmWsBc2HfrAaVdmQ&usqp=CAU',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    myDialog(context);
                  },
                  child: Text('Kontak Kami'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
