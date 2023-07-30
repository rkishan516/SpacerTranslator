import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacer_translator/home/data_provider/supported_language.dart';

class SelectLanguageDropDown extends ConsumerWidget {
  const SelectLanguageDropDown({
    super.key,
    required this.title,
    required this.onChange,
    required this.value,
  });
  final String title;
  final Function(String?) onChange;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languages = ref.watch(supportedLanguagesProvider).entries;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
        DropdownButton<String>(
          items: languages
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e.value,
                  child: Text(e.key),
                ),
              )
              .toList(),
          onChanged: onChange,
          value: value,
          hint: const Text("Select Language"),
        )
      ],
    );
  }
}
