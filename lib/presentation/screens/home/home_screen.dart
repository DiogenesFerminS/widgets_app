import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter + Material3")),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final currentItem = appMenuItems[index];
        return _CustomListTile(currentItem: currentItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItem currentItem;
  const _CustomListTile({required this.currentItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(currentItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
      title: Text(currentItem.title),
      subtitle: Text(currentItem.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen()
        //   )
        // );

        // context.push(currentItem.link);
        context.push(currentItem.link);
      },
    );
  }
}
