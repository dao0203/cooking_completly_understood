// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_by_id_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeByIdStateHash() => r'b3c8b0f6b0b6081d704fd3c66fe9a772c3023ffd';

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

abstract class _$RecipeByIdState
    extends BuildlessAutoDisposeStreamNotifier<Recipe> {
  late final int id;

  Stream<Recipe> build(
    int id,
  );
}

/// See also [RecipeByIdState].
@ProviderFor(RecipeByIdState)
const recipeByIdStateProvider = RecipeByIdStateFamily();

/// See also [RecipeByIdState].
class RecipeByIdStateFamily extends Family<AsyncValue<Recipe>> {
  /// See also [RecipeByIdState].
  const RecipeByIdStateFamily();

  /// See also [RecipeByIdState].
  RecipeByIdStateProvider call(
    int id,
  ) {
    return RecipeByIdStateProvider(
      id,
    );
  }

  @override
  RecipeByIdStateProvider getProviderOverride(
    covariant RecipeByIdStateProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'recipeByIdStateProvider';
}

/// See also [RecipeByIdState].
class RecipeByIdStateProvider
    extends AutoDisposeStreamNotifierProviderImpl<RecipeByIdState, Recipe> {
  /// See also [RecipeByIdState].
  RecipeByIdStateProvider(
    this.id,
  ) : super.internal(
          () => RecipeByIdState()..id = id,
          from: recipeByIdStateProvider,
          name: r'recipeByIdStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeByIdStateHash,
          dependencies: RecipeByIdStateFamily._dependencies,
          allTransitiveDependencies:
              RecipeByIdStateFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is RecipeByIdStateProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Stream<Recipe> runNotifierBuild(
    covariant RecipeByIdState notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
