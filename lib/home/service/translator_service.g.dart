// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translator_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$googleTranslatorHash() => r'9650ca41f615cbb4d818de9d1b9b9c18ddd820a2';

/// See also [googleTranslator].
@ProviderFor(googleTranslator)
final googleTranslatorProvider = AutoDisposeProvider<GoogleTranslator>.internal(
  googleTranslator,
  name: r'googleTranslatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$googleTranslatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoogleTranslatorRef = AutoDisposeProviderRef<GoogleTranslator>;
String _$translatorHash() => r'c86ac84b0e67d1664a0049030e7b7a0469ad5b67';

/// See also [translator].
@ProviderFor(translator)
final translatorProvider =
    AutoDisposeProvider<GoogleTranslatorService>.internal(
  translator,
  name: r'translatorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$translatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TranslatorRef = AutoDisposeProviderRef<GoogleTranslatorService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
