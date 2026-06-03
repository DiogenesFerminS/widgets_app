import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String name = 'buttons_name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Screen")),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Elevated")
            ),
      
            const ElevatedButton(
              onPressed: null, 
              child: Text("Elevated Button")
            ),
      
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon( Icons.access_alarm_rounded), 
              label: const Text("Elevated icon")
            ),
            FilledButton(
              onPressed: () {}, 
              child: const Text("Filled"),
            ),
            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.add_a_photo_sharp),
              label: const Text("Photo"),
            ),

            OutlinedButton(
              onPressed: () {}, 
              child: Text("Outlined")
            ),
            OutlinedButton.icon(
              onPressed: () {}, 
              label: Text("Outlined"),
              icon: Icon(Icons.access_alarm),
            ),
            TextButton(
              onPressed: () {}, 
              child: Text("text")
            ),
            TextButton.icon(
              onPressed: () {}, 
              label: Text("With icon"), 
              icon: Icon(Icons.zoom_out_sharp),
            ),

            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.wrong_location_outlined)
            ),

            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.wrong_location_outlined),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white)
              ),
            )
          ]
        ),
      ),
    );
  }
}
