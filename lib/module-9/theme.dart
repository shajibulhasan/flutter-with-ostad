import 'package:flutter/material.dart';
class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Test',)
          ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello, Ahanf!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                TextField(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('Press Me'),
                ),
              ],
            ),
          ),
        )
    );
  }
}
