// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translator_page_notifer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translatorPageNotifierHash() =>
    r'36b8fd517ffd2f6029b1c030c08ec0f57e32ada7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TranslatorPageNotifier
    extends BuildlessAutoDisposeNotifier<TranslatorPageState> {
  late final String page;

  TranslatorPageState build({
    required String page,
  });
}

/// See also [TranslatorPageNotifier].
@ProviderFor(TranslatorPageNotifier)
const translatorPageNotifierProvider = TranslatorPageNotifierFamily();

/// See also [TranslatorPageNotifier].
class TranslatorPageNotifierFamily extends Family<TranslatorPageState> {
  /// See also [TranslatorPageNotifier].
  const TranslatorPageNotifierFamily();

  /// See also [TranslatorPageNotifier].
  TranslatorPageNotifierProvider call({
    required String page,
  }) {
    return TranslatorPageNotifierProvider(
      page: page,
    );
  }

  @override
  TranslatorPageNotifierProvider getProviderOverride(
    covariant TranslatorPageNotifierProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'translatorPageNotifierProvider';
}

/// See also [TranslatorPageNotifier].
class TranslatorPageNotifierProvider extends AutoDisposeNotifierProviderImpl<
    TranslatorPageNotifier, TranslatorPageState> {
  /// See also [TranslatorPageNotifier].
  TranslatorPageNotifierProvider({
    required this.page,
  }) : super.internal(
          () => TranslatorPageNotifier()..page = page,
          from: translatorPageNotifierProvider,
          name: r'translatorPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$translatorPageNotifierHash,
          dependencies: TranslatorPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              TranslatorPageNotifierFamily._allTransitiveDependencies,
        );

  final String page;

  @override
  bool operator ==(Object other) {
    return other is TranslatorPageNotifierProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  TranslatorPageState runNotifierBuild(
    covariant TranslatorPageNotifier notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
