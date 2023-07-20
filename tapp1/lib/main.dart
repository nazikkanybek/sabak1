import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}



class _MyHomePageState extends State<MyHomePage> {
   int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Тапшырма 1',
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child:  Text(
                  'Сан: $index',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              width: double.infinity,
              height: 30,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {setState(() {
                    index--;
                  });},
                  child: Icon(Icons.remove)), 
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    // сетстейт абалды озгортуу учун 
                    setState(() {
                      index++;
                      
                    }) ;
                  },
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
