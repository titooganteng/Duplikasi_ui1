import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Item Service Coffee"),
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: [
          Container(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 60),
            decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(180.0),
                  bottomRight: Radius.circular(180.0),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 6.0,
                    offset: Offset(1.0, 3.0),
                  )
                ]),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('coffee.jpg',
                  fit: BoxFit.cover,
                  height: 100.0,
                  width: 100.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text("Caffè Latte",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[900],
                ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0
                  ),
                ),
                const SizedBox(height: 30.0,),
                TextButton(
                  onPressed: () {
                    print("Explore More");
                  },
                  style: ButtonStyle(
                    padding: WidgetStateProperty.resolveWith((states) {
                      return const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 16.0,
                      );
                    }),
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      return Colors.brown[700];
                    }),
                    foregroundColor: WidgetStateProperty.resolveWith((states) {
                      return Colors.white;
                    }),
                    shape: WidgetStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      );
                    })
                  ),
                  child: const Text("Explore Now"),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
