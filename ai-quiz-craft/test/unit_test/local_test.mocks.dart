

import 'dart:async' as _i3;
import 'dart:typed_data' as _i6;

import 'package:hive/hive.dart' as _i2;
import 'package:hive/src/box/default_compaction_strategy.dart' as _i5;
import 'package:hive/src/box/default_key_comparator.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;


class _FakeBox_0<E> extends _i1.SmartFake implements _i2.Box<E> {
  _FakeBox_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLazyBox_1<E> extends _i1.SmartFake implements _i2.LazyBox<E> {
  _FakeLazyBox_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class MockHiveInterface extends _i1.Mock implements _i2.HiveInterface {
  MockHiveInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void init(String? path,
          {_i2.HiveStorageBackendPreference? backendPreference =
              _i2.HiveStorageBackendPreference.native}) =>
      super.noSuchMethod(
          Invocation.method(
              #init, [path], {#backendPreference: backendPreference}),
          returnValueForMissingStub: null);
  @override
  _i3.Future<_i2.Box<E>> openBox<E>(String? name,
          {_i2.HiveCipher? encryptionCipher,
          _i2.KeyComparator? keyComparator = _i4.defaultKeyComparator,
          _i2.CompactionStrategy? compactionStrategy =
              _i5.defaultCompactionStrategy,
          bool? crashRecovery = true,
          String? path,
          _i6.Uint8List? bytes,
          String? collection,
          List<int>? encryptionKey}) =>
      (super.noSuchMethod(
          Invocation.method(#openBox, [
            name
          ], {
            #encryptionCipher: encryptionCipher,
            #keyComparator: keyComparator,
            #compactionStrategy: compactionStrategy,
            #crashRecovery: crashRecovery,
            #path: path,
            #bytes: bytes,
            #collection: collection,
            #encryptionKey: encryptionKey
          }),
          returnValue: _i3.Future<_i2.Box<E>>.value(_FakeBox_0<E>(
              this,
              Invocation.method(#openBox, [
                name
              ], {
                #encryptionCipher: encryptionCipher,
                #keyComparator: keyComparator,
                #compactionStrategy: compactionStrategy,
                #crashRecovery: crashRecovery,
                #path: path,
                #bytes: bytes,
                #collection: collection,
                #encryptionKey: encryptionKey
              })))) as _i3.Future<_i2.Box<E>>);
  @override
  _i3.Future<_i2.LazyBox<E>> openLazyBox<E>(String? name,
          {_i2.HiveCipher? encryptionCipher,
          _i2.KeyComparator? keyComparator = _i4.defaultKeyComparator,
          _i2.CompactionStrategy? compactionStrategy =
              _i5.defaultCompactionStrategy,
          bool? crashRecovery = true,
          String? path,
          String? collection,
          List<int>? encryptionKey}) =>
      (super.noSuchMethod(
          Invocation.method(#openLazyBox, [
            name
          ], {
            #encryptionCipher: encryptionCipher,
            #keyComparator: keyComparator,
            #compactionStrategy: compactionStrategy,
            #crashRecovery: crashRecovery,
            #path: path,
            #collection: collection,
            #encryptionKey: encryptionKey
          }),
          returnValue: _i3.Future<_i2.LazyBox<E>>.value(_FakeLazyBox_1<E>(
              this,
              Invocation.method(#openLazyBox, [
                name
              ], {
                #encryptionCipher: encryptionCipher,
                #keyComparator: keyComparator,
                #compactionStrategy: compactionStrategy,
                #crashRecovery: crashRecovery,
                #path: path,
                #collection: collection,
                #encryptionKey: encryptionKey
              })))) as _i3.Future<_i2.LazyBox<E>>);
  @override
  _i2.Box<E> box<E>(String? name) =>
      (super.noSuchMethod(Invocation.method(#box, [name]),
              returnValue: _FakeBox_0<E>(this, Invocation.method(#box, [name])))
          as _i2.Box<E>);
  @override
  _i2.LazyBox<E> lazyBox<E>(String? name) =>
      (super.noSuchMethod(Invocation.method(#lazyBox, [name]),
              returnValue:
                  _FakeLazyBox_1<E>(this, Invocation.method(#lazyBox, [name])))
          as _i2.LazyBox<E>);
  @override
  bool isBoxOpen(String? name) =>
      (super.noSuchMethod(Invocation.method(#isBoxOpen, [name]),
          returnValue: false) as bool);
  @override
  _i3.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteBoxFromDisk(String? name, {String? path}) =>
      (super.noSuchMethod(
              Invocation.method(#deleteBoxFromDisk, [name], {#path: path}),
              returnValue: _i3.Future<void>.value(),
              returnValueForMissingStub: _i3.Future<void>.value())
          as _i3.Future<void>);
  @override
  _i3.Future<void> deleteFromDisk() => (super.noSuchMethod(
      Invocation.method(#deleteFromDisk, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  List<int> generateSecureKey() =>
      (super.noSuchMethod(Invocation.method(#generateSecureKey, []),
          returnValue: <int>[]) as List<int>);
  @override
  _i3.Future<bool> boxExists(String? name, {String? path}) =>
      (super.noSuchMethod(Invocation.method(#boxExists, [name], {#path: path}),
          returnValue: _i3.Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  void resetAdapters() =>
      super.noSuchMethod(Invocation.method(#resetAdapters, []),
          returnValueForMissingStub: null);
  @override
  void registerAdapter<T>(_i2.TypeAdapter<T>? adapter,
          {bool? internal = false, bool? override = false}) =>
      super.noSuchMethod(
          Invocation.method(#registerAdapter, [adapter],
              {#internal: internal, #override: override}),
          returnValueForMissingStub: null);
  @override
  bool isAdapterRegistered(int? typeId) =>
      (super.noSuchMethod(Invocation.method(#isAdapterRegistered, [typeId]),
          returnValue: false) as bool);
  @override
  void ignoreTypeId<T>(int? typeId) =>
      super.noSuchMethod(Invocation.method(#ignoreTypeId, [typeId]),
          returnValueForMissingStub: null);
}

class MockBox<E> extends _i1.Mock implements _i2.Box<E> {
  MockBox() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Iterable<E> get values =>
      (super.noSuchMethod(Invocation.getter(#values), returnValue: <E>[])
          as Iterable<E>);
  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  bool get isOpen =>
      (super.noSuchMethod(Invocation.getter(#isOpen), returnValue: false)
          as bool);
  @override
  bool get lazy =>
      (super.noSuchMethod(Invocation.getter(#lazy), returnValue: false)
          as bool);
  @override
  Iterable<dynamic> get keys =>
      (super.noSuchMethod(Invocation.getter(#keys), returnValue: <dynamic>[])
          as Iterable<dynamic>);
  @override
  int get length =>
      (super.noSuchMethod(Invocation.getter(#length), returnValue: 0) as int);
  @override
  bool get isEmpty =>
      (super.noSuchMethod(Invocation.getter(#isEmpty), returnValue: false)
          as bool);
  @override
  bool get isNotEmpty =>
      (super.noSuchMethod(Invocation.getter(#isNotEmpty), returnValue: false)
          as bool);
  @override
  Iterable<E> valuesBetween({dynamic startKey, dynamic endKey}) =>
      (super.noSuchMethod(
          Invocation.method(
              #valuesBetween, [], {#startKey: startKey, #endKey: endKey}),
          returnValue: <E>[]) as Iterable<E>);
  @override
  E? getAt(int? index) =>
      (super.noSuchMethod(Invocation.method(#getAt, [index])) as E?);
  @override
  Map<dynamic, E> toMap() => (super.noSuchMethod(Invocation.method(#toMap, []),
      returnValue: <dynamic, E>{}) as Map<dynamic, E>);
  @override
  dynamic keyAt(int? index) =>
      super.noSuchMethod(Invocation.method(#keyAt, [index]));
  @override
  _i3.Stream<_i2.BoxEvent> watch({dynamic key}) =>
      (super.noSuchMethod(Invocation.method(#watch, [], {#key: key}),
              returnValue: _i3.Stream<_i2.BoxEvent>.empty())
          as _i3.Stream<_i2.BoxEvent>);
  @override
  bool containsKey(dynamic key) =>
      (super.noSuchMethod(Invocation.method(#containsKey, [key]),
          returnValue: false) as bool);
  @override
  _i3.Future<void> put(dynamic key, E? value) => (super.noSuchMethod(
      Invocation.method(#put, [key, value]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> putAt(int? index, E? value) => (super.noSuchMethod(
      Invocation.method(#putAt, [index, value]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> putAll(Map<dynamic, E>? entries) => (super.noSuchMethod(
      Invocation.method(#putAll, [entries]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<int> add(E? value) =>
      (super.noSuchMethod(Invocation.method(#add, [value]),
          returnValue: _i3.Future<int>.value(0)) as _i3.Future<int>);
  @override
  _i3.Future<Iterable<int>> addAll(Iterable<E>? values) =>
      (super.noSuchMethod(Invocation.method(#addAll, [values]),
              returnValue: _i3.Future<Iterable<int>>.value(<int>[]))
          as _i3.Future<Iterable<int>>);
  @override
  _i3.Future<void> delete(dynamic key) => (super.noSuchMethod(
      Invocation.method(#delete, [key]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteAt(int? index) => (super.noSuchMethod(
      Invocation.method(#deleteAt, [index]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteAll(Iterable<dynamic>? keys) => (super.noSuchMethod(
      Invocation.method(#deleteAll, [keys]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> compact() => (super.noSuchMethod(
      Invocation.method(#compact, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<int> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: _i3.Future<int>.value(0)) as _i3.Future<int>);
  @override
  _i3.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteFromDisk() => (super.noSuchMethod(
      Invocation.method(#deleteFromDisk, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> flush() => (super.noSuchMethod(Invocation.method(#flush, []),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
}
