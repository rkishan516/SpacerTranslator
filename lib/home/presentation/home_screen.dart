import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacer_translator/home/notifiers/home_screen_notifier.dart';
import 'package:spacer_translator/home/presentation/local_translator.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomeStateState();
}

class _MyHomeStateState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translator'),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.translate, title: "Home"),
          TabData(iconData: Icons.g_translate, title: "Basket")
        ],
        onTabChangedListener: (position) =>
            ref.read(homeScreenNotifierProvider.notifier).changePage(position),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.volume_up),
        onPressed: () => ref.read(homeScreenNotifierProvider.notifier).speak(),
      ),
      body: Center(
        child: TranslatorPage(
          page: HomeSubPage.values[ref.watch(
            homeScreenNotifierProvider.select((value) => value.currentPage),
          )],
        ),
      ),
    );
  }
}
