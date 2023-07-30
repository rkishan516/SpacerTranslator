import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacer_translator/home/notifiers/translator_page_notifer.dart';
import 'package:spacer_translator/home/presentation/select_language_dropdown.dart';

enum HomeSubPage {
  home,
  translator,
}

class TranslatorPage extends ConsumerStatefulWidget {
  const TranslatorPage({super.key, required this.page});
  final HomeSubPage page;

  @override
  ConsumerState<TranslatorPage> createState() => _TranslatorPageState();
}

class _TranslatorPageState extends ConsumerState<TranslatorPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.page == HomeSubPage.home) {
        Locale myLocale = Localizations.localeOf(context);
        var homeLanuage = myLocale.toString().substring(0, 2);
        homeLanuage = 'hi';
        ref
            .read(
                translatorPageNotifierProvider(page: widget.page.name).notifier)
            .updateToLanguage(homeLanuage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref
        .watch(translatorPageNotifierProvider(page: widget.page.name).notifier);
    final state =
        ref.watch(translatorPageNotifierProvider(page: widget.page.name));
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: controller.updateInput,
            decoration: const InputDecoration(
              labelText: "Text",
              hintText: "Enter Your text",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          if (widget.page == HomeSubPage.translator)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SelectLanguageDropDown(
                    title: 'From :',
                    onChange: (s) {
                      if (s != null) {
                        controller.updateFromLanguage(s);
                      }
                    },
                    value: state.fromLanguage,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SelectLanguageDropDown(
                    title: 'To :',
                    onChange: (s) {
                      if (s != null) {
                        controller.updateToLanguage(s);
                      }
                    },
                    value: state.toLanguage,
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                controller.process();
              },
              child: const Text(
                "Translate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          if (state.output != '')
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 8,
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(state.output),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
