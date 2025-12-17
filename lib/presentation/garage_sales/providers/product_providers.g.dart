// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(products)
const productsProvider = ProductsProvider._();

final class ProductsProvider
    extends $FunctionalProvider<List<Product>, List<Product>, List<Product>>
    with $Provider<List<Product>> {
  const ProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsHash();

  @$internal
  @override
  $ProviderElement<List<Product>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Product> create(Ref ref) {
    return products(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Product> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Product>>(value),
    );
  }
}

String _$productsHash() => r'e6f75e550de12247f2cb51cd728fbaba7d17a5b4';

@ProviderFor(reducedProduct)
const reducedProductProvider = ReducedProductProvider._();

final class ReducedProductProvider
    extends $FunctionalProvider<List<Product>, List<Product>, List<Product>>
    with $Provider<List<Product>> {
  const ReducedProductProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reducedProductProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reducedProductHash();

  @$internal
  @override
  $ProviderElement<List<Product>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Product> create(Ref ref) {
    return reducedProduct(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Product> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Product>>(value),
    );
  }
}

String _$reducedProductHash() => r'f16b11f22718e4beb1b8266559c2132edd5dd16f';
