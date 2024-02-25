import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App home page'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
        backgroundColor: const Color(0xBC0075D7),
        foregroundColor: const Color(0xFFFFFFFF),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 25),
            backgroundColor: const Color(0xE80CD556),
            foregroundColor: const Color(0xFFFFFFFF),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const PageTwo()),
            );
          },
          child: const Text('Start your authorization'),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization in app'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
        backgroundColor: const Color(0xBC0075D7),
        foregroundColor: const Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Login',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: const Color(0xE80CD556),
                    foregroundColor: const Color(0xFFFFFFFF),
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go to previous page'),
                ),
                const SizedBox(width: 15),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: const Color(0xD3E70000),
                    foregroundColor: const Color(0xFFFFFFFF),
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                      const PageThree()),
                    );
                  },
                  child: const Text('Go to registration page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration in app'),
        titleTextStyle: const TextStyle(color: Colors.white,
            fontSize: 30),
        backgroundColor: const Color(0xBC0075D7),
        foregroundColor: const Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'First name',
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Patronymic',
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Phone number',
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: const Color(0xD3E70000),
                  foregroundColor: const Color(0xFFFFFFFF),
                  elevation: 1.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text ('Go to previous page')
            ),
          ],
        ),
      ),
    );
  }
}

