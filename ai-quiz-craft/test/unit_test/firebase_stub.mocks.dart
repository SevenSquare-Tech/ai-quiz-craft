

import 'dart:async' as _i10;
import 'dart:typed_data' as _i11;

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart'
    as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:cloud_functions_platform_interface/cloud_functions_platform_interface.dart'
    as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i2;
import 'package:firebase_core/firebase_core.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i12;
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart'
    as _i9;
import 'package:mockito/mockito.dart' as _i1;


class _FakeUserMetadata_0 extends _i1.SmartFake implements _i2.UserMetadata {
  _FakeUserMetadata_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeMultiFactor_1 extends _i1.SmartFake implements _i3.MultiFactor {
  _FakeMultiFactor_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeIdTokenResult_2 extends _i1.SmartFake implements _i2.IdTokenResult {
  _FakeIdTokenResult_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserCredential_3 extends _i1.SmartFake
    implements _i3.UserCredential {
  _FakeUserCredential_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeConfirmationResult_4 extends _i1.SmartFake
    implements _i3.ConfirmationResult {
  _FakeConfirmationResult_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUser_5 extends _i1.SmartFake implements _i3.User {
  _FakeUser_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFirebaseApp_6 extends _i1.SmartFake implements _i4.FirebaseApp {
  _FakeFirebaseApp_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeActionCodeInfo_7 extends _i1.SmartFake
    implements _i2.ActionCodeInfo {
  _FakeActionCodeInfo_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSettings_8 extends _i1.SmartFake implements _i5.Settings {
  _FakeSettings_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeCollectionReference_9<T extends Object?> extends _i1.SmartFake
    implements _i6.CollectionReference<T> {
  _FakeCollectionReference_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeWriteBatch_10 extends _i1.SmartFake implements _i6.WriteBatch {
  _FakeWriteBatch_10(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLoadBundleTask_11 extends _i1.SmartFake
    implements _i6.LoadBundleTask {
  _FakeLoadBundleTask_11(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuerySnapshot_12<T extends Object?> extends _i1.SmartFake
    implements _i6.QuerySnapshot<T> {
  _FakeQuerySnapshot_12(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuery_13<T extends Object?> extends _i1.SmartFake
    implements _i6.Query<T> {
  _FakeQuery_13(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDocumentReference_14<T extends Object?> extends _i1.SmartFake
    implements _i6.DocumentReference<T> {
  _FakeDocumentReference_14(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFirebaseFunctionsPlatform_15 extends _i1.SmartFake
    implements _i7.FirebaseFunctionsPlatform {
  _FakeFirebaseFunctionsPlatform_15(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHttpsCallable_16 extends _i1.SmartFake implements _i8.HttpsCallable {
  _FakeHttpsCallable_16(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeNotificationSettings_17 extends _i1.SmartFake
    implements _i9.NotificationSettings {
  _FakeNotificationSettings_17(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFirebaseFirestore_18 extends _i1.SmartFake
    implements _i6.FirebaseFirestore {
  _FakeFirebaseFirestore_18(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSnapshotMetadata_19 extends _i1.SmartFake
    implements _i6.SnapshotMetadata {
  _FakeSnapshotMetadata_19(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDocumentSnapshot_20<T extends Object?> extends _i1.SmartFake
    implements _i6.DocumentSnapshot<T> {
  _FakeDocumentSnapshot_20(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHttpsCallablePlatform_21 extends _i1.SmartFake
    implements _i7.HttpsCallablePlatform {
  _FakeHttpsCallablePlatform_21(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHttpsCallableResult_22<T> extends _i1.SmartFake
    implements _i8.HttpsCallableResult<T> {
  _FakeHttpsCallableResult_22(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class MockUser extends _i1.Mock implements _i3.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get emailVerified =>
      (super.noSuchMethod(Invocation.getter(#emailVerified), returnValue: false)
          as bool);
  @override
  bool get isAnonymous =>
      (super.noSuchMethod(Invocation.getter(#isAnonymous), returnValue: false)
          as bool);
  @override
  _i2.UserMetadata get metadata => (super.noSuchMethod(
          Invocation.getter(#metadata),
          returnValue: _FakeUserMetadata_0(this, Invocation.getter(#metadata)))
      as _i2.UserMetadata);
  @override
  List<_i2.UserInfo> get providerData =>
      (super.noSuchMethod(Invocation.getter(#providerData),
          returnValue: <_i2.UserInfo>[]) as List<_i2.UserInfo>);
  @override
  String get uid =>
      (super.noSuchMethod(Invocation.getter(#uid), returnValue: '') as String);
  @override
  _i3.MultiFactor get multiFactor =>
      (super.noSuchMethod(Invocation.getter(#multiFactor),
              returnValue:
                  _FakeMultiFactor_1(this, Invocation.getter(#multiFactor)))
          as _i3.MultiFactor);
  @override
  _i10.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdToken, [forceRefresh]),
          returnValue: _i10.Future<String>.value('')) as _i10.Future<String>);
  @override
  _i10.Future<_i2.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdTokenResult, [forceRefresh]),
              returnValue: _i10.Future<_i2.IdTokenResult>.value(
                  _FakeIdTokenResult_2(this,
                      Invocation.method(#getIdTokenResult, [forceRefresh]))))
          as _i10.Future<_i2.IdTokenResult>);
  @override
  _i10.Future<_i3.UserCredential> linkWithCredential(
          _i2.AuthCredential? credential) =>
      (super.noSuchMethod(Invocation.method(#linkWithCredential, [credential]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(this,
                      Invocation.method(#linkWithCredential, [credential]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> linkWithPopup(_i2.AuthProvider? provider) =>
      (super.noSuchMethod(Invocation.method(#linkWithPopup, [provider]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this, Invocation.method(#linkWithPopup, [provider]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.ConfirmationResult> linkWithPhoneNumber(String? phoneNumber,
          [_i3.RecaptchaVerifier? verifier]) =>
      (super.noSuchMethod(
              Invocation.method(#linkWithPhoneNumber, [phoneNumber, verifier]),
              returnValue: _i10.Future<_i3.ConfirmationResult>.value(
                  _FakeConfirmationResult_4(
                      this,
                      Invocation.method(
                          #linkWithPhoneNumber, [phoneNumber, verifier]))))
          as _i10.Future<_i3.ConfirmationResult>);
  @override
  _i10.Future<_i3.UserCredential> reauthenticateWithCredential(
          _i2.AuthCredential? credential) =>
      (super.noSuchMethod(
              Invocation.method(#reauthenticateWithCredential, [credential]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this,
                      Invocation.method(
                          #reauthenticateWithCredential, [credential]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> sendEmailVerification(
          [_i2.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
              Invocation.method(#sendEmailVerification, [actionCodeSettings]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<_i3.User> unlink(String? providerId) =>
      (super.noSuchMethod(Invocation.method(#unlink, [providerId]),
              returnValue: _i10.Future<_i3.User>.value(
                  _FakeUser_5(this, Invocation.method(#unlink, [providerId]))))
          as _i10.Future<_i3.User>);
  @override
  _i10.Future<void> updateEmail(String? newEmail) =>
      (super.noSuchMethod(Invocation.method(#updateEmail, [newEmail]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> updatePassword(String? newPassword) =>
      (super.noSuchMethod(Invocation.method(#updatePassword, [newPassword]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> updatePhoneNumber(
          _i2.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
              Invocation.method(#updatePhoneNumber, [phoneCredential]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> updateDisplayName(String? displayName) =>
      (super.noSuchMethod(Invocation.method(#updateDisplayName, [displayName]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> updatePhotoURL(String? photoURL) =>
      (super.noSuchMethod(Invocation.method(#updatePhotoURL, [photoURL]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> updateProfile({String? displayName, String? photoURL}) =>
      (super.noSuchMethod(
              Invocation.method(#updateProfile, [],
                  {#displayName: displayName, #photoURL: photoURL}),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> verifyBeforeUpdateEmail(String? newEmail,
          [_i2.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
              Invocation.method(
                  #verifyBeforeUpdateEmail, [newEmail, actionCodeSettings]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
}

class MockUserCredential extends _i1.Mock implements _i3.UserCredential {
  MockUserCredential() {
    _i1.throwOnMissingStub(this);
  }
}

class MockFirebaseAuth extends _i1.Mock implements _i3.FirebaseAuth {
  MockFirebaseAuth() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_6(this, Invocation.getter(#app)))
      as _i4.FirebaseApp);
  @override
  set app(_i4.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set tenantId(String? tenantId) =>
      super.noSuchMethod(Invocation.setter(#tenantId, tenantId),
          returnValueForMissingStub: null);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i10.Future<void> useEmulator(String? origin) =>
      (super.noSuchMethod(Invocation.method(#useEmulator, [origin]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> useAuthEmulator(String? host, int? port) =>
      (super.noSuchMethod(Invocation.method(#useAuthEmulator, [host, port]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> applyActionCode(String? code) =>
      (super.noSuchMethod(Invocation.method(#applyActionCode, [code]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<_i2.ActionCodeInfo> checkActionCode(String? code) =>
      (super.noSuchMethod(Invocation.method(#checkActionCode, [code]),
              returnValue: _i10.Future<_i2.ActionCodeInfo>.value(
                  _FakeActionCodeInfo_7(
                      this, Invocation.method(#checkActionCode, [code]))))
          as _i10.Future<_i2.ActionCodeInfo>);
  @override
  _i10.Future<void> confirmPasswordReset({String? code, String? newPassword}) =>
      (super.noSuchMethod(
              Invocation.method(#confirmPasswordReset, [],
                  {#code: code, #newPassword: newPassword}),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<_i3.UserCredential> createUserWithEmailAndPassword(
          {String? email, String? password}) =>
      (super
          .noSuchMethod(Invocation.method(#createUserWithEmailAndPassword, [], {#email: email, #password: password}),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this,
                      Invocation.method(#createUserWithEmailAndPassword, [], {
                        #email: email,
                        #password: password
                      })))) as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<List<String>> fetchSignInMethodsForEmail(String? email) => (super
          .noSuchMethod(Invocation.method(#fetchSignInMethodsForEmail, [email]),
              returnValue: _i10.Future<List<String>>.value(<String>[]))
      as _i10.Future<List<String>>);
  @override
  _i10.Future<_i3.UserCredential> getRedirectResult() =>
      (super.noSuchMethod(Invocation.method(#getRedirectResult, []),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this, Invocation.method(#getRedirectResult, []))))
          as _i10.Future<_i3.UserCredential>);
  @override
  bool isSignInWithEmailLink(String? emailLink) => (super.noSuchMethod(
      Invocation.method(#isSignInWithEmailLink, [emailLink]),
      returnValue: false) as bool);
  @override
  _i10.Stream<_i3.User?> authStateChanges() => (super.noSuchMethod(
      Invocation.method(#authStateChanges, []),
      returnValue: _i10.Stream<_i3.User?>.empty()) as _i10.Stream<_i3.User?>);
  @override
  _i10.Stream<_i3.User?> idTokenChanges() => (super.noSuchMethod(
      Invocation.method(#idTokenChanges, []),
      returnValue: _i10.Stream<_i3.User?>.empty()) as _i10.Stream<_i3.User?>);
  @override
  _i10.Stream<_i3.User?> userChanges() => (super.noSuchMethod(
      Invocation.method(#userChanges, []),
      returnValue: _i10.Stream<_i3.User?>.empty()) as _i10.Stream<_i3.User?>);
  @override
  _i10.Future<void> sendPasswordResetEmail(
          {String? email, _i2.ActionCodeSettings? actionCodeSettings}) =>
      (super.noSuchMethod(
              Invocation.method(#sendPasswordResetEmail, [],
                  {#email: email, #actionCodeSettings: actionCodeSettings}),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> sendSignInLinkToEmail(
          {String? email, _i2.ActionCodeSettings? actionCodeSettings}) =>
      (super.noSuchMethod(
              Invocation.method(#sendSignInLinkToEmail, [],
                  {#email: email, #actionCodeSettings: actionCodeSettings}),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> setLanguageCode(String? languageCode) =>
      (super.noSuchMethod(Invocation.method(#setLanguageCode, [languageCode]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> setSettings(
          {bool? appVerificationDisabledForTesting,
          String? userAccessGroup,
          String? phoneNumber,
          String? smsCode,
          bool? forceRecaptchaFlow}) =>
      (super.noSuchMethod(
              Invocation.method(#setSettings, [], {
                #appVerificationDisabledForTesting:
                    appVerificationDisabledForTesting,
                #userAccessGroup: userAccessGroup,
                #phoneNumber: phoneNumber,
                #smsCode: smsCode,
                #forceRecaptchaFlow: forceRecaptchaFlow
              }),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> setPersistence(_i2.Persistence? persistence) =>
      (super.noSuchMethod(Invocation.method(#setPersistence, [persistence]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<_i3.UserCredential> signInAnonymously() =>
      (super.noSuchMethod(Invocation.method(#signInAnonymously, []),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this, Invocation.method(#signInAnonymously, []))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> signInWithCredential(
          _i2.AuthCredential? credential) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithCredential, [credential]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(this,
                      Invocation.method(#signInWithCredential, [credential]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> signInWithCustomToken(String? token) =>
      (super.noSuchMethod(Invocation.method(#signInWithCustomToken, [token]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(this,
                      Invocation.method(#signInWithCustomToken, [token]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> signInWithEmailAndPassword(
          {String? email, String? password}) =>
      (super
          .noSuchMethod(Invocation.method(#signInWithEmailAndPassword, [], {#email: email, #password: password}),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this,
                      Invocation.method(#signInWithEmailAndPassword, [], {
                        #email: email,
                        #password: password
                      })))) as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> signInWithEmailLink(
          {String? email, String? emailLink}) =>
      (super
          .noSuchMethod(Invocation.method(#signInWithEmailLink, [], {#email: email, #emailLink: emailLink}),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this,
                      Invocation.method(#signInWithEmailLink, [], {
                        #email: email,
                        #emailLink: emailLink
                      })))) as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.UserCredential> signInWithAuthProvider(
          _i2.AuthProvider? provider) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithAuthProvider, [provider]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(this,
                      Invocation.method(#signInWithAuthProvider, [provider]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<_i3.ConfirmationResult> signInWithPhoneNumber(String? phoneNumber,
          [_i3.RecaptchaVerifier? verifier]) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithPhoneNumber, [phoneNumber, verifier]),
              returnValue: _i10.Future<_i3.ConfirmationResult>.value(
                  _FakeConfirmationResult_4(
                      this,
                      Invocation.method(
                          #signInWithPhoneNumber, [phoneNumber, verifier]))))
          as _i10.Future<_i3.ConfirmationResult>);
  @override
  _i10.Future<_i3.UserCredential> signInWithPopup(_i2.AuthProvider? provider) =>
      (super.noSuchMethod(Invocation.method(#signInWithPopup, [provider]),
              returnValue: _i10.Future<_i3.UserCredential>.value(
                  _FakeUserCredential_3(
                      this, Invocation.method(#signInWithPopup, [provider]))))
          as _i10.Future<_i3.UserCredential>);
  @override
  _i10.Future<void> signInWithRedirect(_i2.AuthProvider? provider) =>
      (super.noSuchMethod(Invocation.method(#signInWithRedirect, [provider]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<String> verifyPasswordResetCode(String? code) =>
      (super.noSuchMethod(Invocation.method(#verifyPasswordResetCode, [code]),
          returnValue: _i10.Future<String>.value('')) as _i10.Future<String>);
  @override
  _i10.Future<void> verifyPhoneNumber(
          {String? phoneNumber,
          _i2.PhoneMultiFactorInfo? multiFactorInfo,
          _i2.PhoneVerificationCompleted? verificationCompleted,
          _i2.PhoneVerificationFailed? verificationFailed,
          _i2.PhoneCodeSent? codeSent,
          _i2.PhoneCodeAutoRetrievalTimeout? codeAutoRetrievalTimeout,
          String? autoRetrievedSmsCodeForTesting,
          Duration? timeout = const Duration(seconds: 30),
          int? forceResendingToken,
          _i2.MultiFactorSession? multiFactorSession}) =>
      (super.noSuchMethod(
              Invocation.method(#verifyPhoneNumber, [], {
                #phoneNumber: phoneNumber,
                #multiFactorInfo: multiFactorInfo,
                #verificationCompleted: verificationCompleted,
                #verificationFailed: verificationFailed,
                #codeSent: codeSent,
                #codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
                #autoRetrievedSmsCodeForTesting: autoRetrievedSmsCodeForTesting,
                #timeout: timeout,
                #forceResendingToken: forceResendingToken,
                #multiFactorSession: multiFactorSession
              }),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
}

class MockFirebaseFirestore extends _i1.Mock implements _i6.FirebaseFirestore {
  MockFirebaseFirestore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_6(this, Invocation.getter(#app)))
      as _i4.FirebaseApp);
  @override
  set app(_i4.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set settings(_i5.Settings? settings) =>
      super.noSuchMethod(Invocation.setter(#settings, settings),
          returnValueForMissingStub: null);
  @override
  _i5.Settings get settings => (super.noSuchMethod(Invocation.getter(#settings),
          returnValue: _FakeSettings_8(this, Invocation.getter(#settings)))
      as _i5.Settings);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i6.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_9<Map<String, dynamic>>(
                  this, Invocation.method(#collection, [collectionPath])))
          as _i6.CollectionReference<Map<String, dynamic>>);
  @override
  _i6.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
          returnValue: _FakeWriteBatch_10(this, Invocation.method(#batch, [])))
      as _i6.WriteBatch);
  @override
  _i10.Future<void> clearPersistence() =>
      (super.noSuchMethod(Invocation.method(#clearPersistence, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> enablePersistence(
          [_i5.PersistenceSettings? persistenceSettings]) =>
      (super.noSuchMethod(
              Invocation.method(#enablePersistence, [persistenceSettings]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i6.LoadBundleTask loadBundle(_i11.Uint8List? bundle) =>
      (super.noSuchMethod(Invocation.method(#loadBundle, [bundle]),
              returnValue: _FakeLoadBundleTask_11(
                  this, Invocation.method(#loadBundle, [bundle])))
          as _i6.LoadBundleTask);
  @override
  void useFirestoreEmulator(String? host, int? port,
          {bool? sslEnabled = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #useFirestoreEmulator, [host, port], {#sslEnabled: sslEnabled}),
          returnValueForMissingStub: null);
  @override
  _i10.Future<_i6.QuerySnapshot<Map<String, dynamic>>> namedQueryGet(
          String? name,
          {_i5.GetOptions? options = const _i5.GetOptions()}) =>
      (super.noSuchMethod(
              Invocation.method(#namedQueryGet, [name], {#options: options}),
              returnValue:
                  _i10.Future<_i6.QuerySnapshot<Map<String, dynamic>>>.value(
                      _FakeQuerySnapshot_12<Map<String, dynamic>>(this,
                          Invocation.method(#namedQueryGet, [name], {#options: options}))))
          as _i10.Future<_i6.QuerySnapshot<Map<String, dynamic>>>);
  @override
  _i6.Query<Map<String, dynamic>> collectionGroup(String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collectionGroup, [collectionPath]),
              returnValue: _FakeQuery_13<Map<String, dynamic>>(
                  this, Invocation.method(#collectionGroup, [collectionPath])))
          as _i6.Query<Map<String, dynamic>>);
  @override
  _i10.Future<void> disableNetwork() =>
      (super.noSuchMethod(Invocation.method(#disableNetwork, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i6.DocumentReference<Map<String, dynamic>> doc(String? documentPath) =>
      (super.noSuchMethod(Invocation.method(#doc, [documentPath]),
              returnValue: _FakeDocumentReference_14<Map<String, dynamic>>(
                  this, Invocation.method(#doc, [documentPath])))
          as _i6.DocumentReference<Map<String, dynamic>>);
  @override
  _i10.Future<void> enableNetwork() =>
      (super.noSuchMethod(Invocation.method(#enableNetwork, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Stream<void> snapshotsInSync() =>
      (super.noSuchMethod(Invocation.method(#snapshotsInSync, []),
          returnValue: _i10.Stream<void>.empty()) as _i10.Stream<void>);
  @override
  _i10.Future<T> runTransaction<T>(
          _i6.TransactionHandler<T>? transactionHandler,
          {Duration? timeout = const Duration(seconds: 30),
          int? maxAttempts = 5}) =>
      (super.noSuchMethod(
          Invocation.method(#runTransaction, [transactionHandler],
              {#timeout: timeout, #maxAttempts: maxAttempts}),
          returnValue: _i10.Future<T>.value(null)) as _i10.Future<T>);
  @override
  _i10.Future<void> terminate() =>
      (super.noSuchMethod(Invocation.method(#terminate, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> waitForPendingWrites() =>
      (super.noSuchMethod(Invocation.method(#waitForPendingWrites, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
}

class MockFirebaseFunctions extends _i1.Mock implements _i8.FirebaseFunctions {
  MockFirebaseFunctions() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_6(this, Invocation.getter(#app)))
      as _i4.FirebaseApp);
  @override
  _i7.FirebaseFunctionsPlatform get delegate =>
      (super.noSuchMethod(Invocation.getter(#delegate),
              returnValue: _FakeFirebaseFunctionsPlatform_15(
                  this, Invocation.getter(#delegate)))
          as _i7.FirebaseFunctionsPlatform);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i8.HttpsCallable httpsCallable(String? name,
          {_i7.HttpsCallableOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(#httpsCallable, [name], {#options: options}),
              returnValue: _FakeHttpsCallable_16(
                  this,
                  Invocation.method(
                      #httpsCallable, [name], {#options: options})))
          as _i8.HttpsCallable);
  @override
  void useFunctionsEmulator(String? host, int? port) =>
      super.noSuchMethod(Invocation.method(#useFunctionsEmulator, [host, port]),
          returnValueForMissingStub: null);
}

class MockFirebaseMessaging extends _i1.Mock implements _i12.FirebaseMessaging {
  MockFirebaseMessaging() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_6(this, Invocation.getter(#app)))
      as _i4.FirebaseApp);
  @override
  set app(_i4.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  bool get isAutoInitEnabled =>
      (super.noSuchMethod(Invocation.getter(#isAutoInitEnabled),
          returnValue: false) as bool);
  @override
  _i10.Stream<String> get onTokenRefresh =>
      (super.noSuchMethod(Invocation.getter(#onTokenRefresh),
          returnValue: _i10.Stream<String>.empty()) as _i10.Stream<String>);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i10.Future<_i9.RemoteMessage?> getInitialMessage() =>
      (super.noSuchMethod(Invocation.method(#getInitialMessage, []),
              returnValue: _i10.Future<_i9.RemoteMessage?>.value())
          as _i10.Future<_i9.RemoteMessage?>);
  @override
  _i10.Future<void> deleteToken() =>
      (super.noSuchMethod(Invocation.method(#deleteToken, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<String?> getAPNSToken() =>
      (super.noSuchMethod(Invocation.method(#getAPNSToken, []),
          returnValue: _i10.Future<String?>.value()) as _i10.Future<String?>);
  @override
  _i10.Future<String?> getToken({String? vapidKey}) => (super.noSuchMethod(
      Invocation.method(#getToken, [], {#vapidKey: vapidKey}),
      returnValue: _i10.Future<String?>.value()) as _i10.Future<String?>);
  @override
  _i10.Future<bool> isSupported() =>
      (super.noSuchMethod(Invocation.method(#isSupported, []),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<_i9.NotificationSettings> getNotificationSettings() =>
      (super.noSuchMethod(Invocation.method(#getNotificationSettings, []),
              returnValue: _i10.Future<_i9.NotificationSettings>.value(
                  _FakeNotificationSettings_17(
                      this, Invocation.method(#getNotificationSettings, []))))
          as _i10.Future<_i9.NotificationSettings>);
  @override
  _i10.Future<_i9.NotificationSettings> requestPermission(
          {bool? alert = true,
          bool? announcement = false,
          bool? badge = true,
          bool? carPlay = false,
          bool? criticalAlert = false,
          bool? provisional = false,
          bool? sound = true}) =>
      (super.noSuchMethod(
          Invocation.method(#requestPermission, [], {
            #alert: alert,
            #announcement: announcement,
            #badge: badge,
            #carPlay: carPlay,
            #criticalAlert: criticalAlert,
            #provisional: provisional,
            #sound: sound
          }),
          returnValue: _i10.Future<_i9.NotificationSettings>.value(
              _FakeNotificationSettings_17(
                  this,
                  Invocation.method(#requestPermission, [], {
                    #alert: alert,
                    #announcement: announcement,
                    #badge: badge,
                    #carPlay: carPlay,
                    #criticalAlert: criticalAlert,
                    #provisional: provisional,
                    #sound: sound
                  })))) as _i10.Future<_i9.NotificationSettings>);
  @override
  _i10.Future<void> sendMessage(
          {String? to,
          Map<String, String>? data,
          String? collapseKey,
          String? messageId,
          String? messageType,
          int? ttl}) =>
      (super.noSuchMethod(
              Invocation.method(#sendMessage, [], {
                #to: to,
                #data: data,
                #collapseKey: collapseKey,
                #messageId: messageId,
                #messageType: messageType,
                #ttl: ttl
              }),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> setAutoInitEnabled(bool? enabled) =>
      (super.noSuchMethod(Invocation.method(#setAutoInitEnabled, [enabled]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> setForegroundNotificationPresentationOptions(
          {bool? alert = false, bool? badge = false, bool? sound = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #setForegroundNotificationPresentationOptions,
                  [],
                  {#alert: alert, #badge: badge, #sound: sound}),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> subscribeToTopic(String? topic) =>
      (super.noSuchMethod(Invocation.method(#subscribeToTopic, [topic]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> unsubscribeFromTopic(String? topic) =>
      (super.noSuchMethod(Invocation.method(#unsubscribeFromTopic, [topic]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
}

class MockCollectionReference<T extends Object?> extends _i1.Mock
    implements _i6.CollectionReference<T> {
  MockCollectionReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i6.FirebaseFirestore get firestore => (super.noSuchMethod(
          Invocation.getter(#firestore),
          returnValue:
              _FakeFirebaseFirestore_18(this, Invocation.getter(#firestore)))
      as _i6.FirebaseFirestore);
  @override
  Map<String, dynamic> get parameters =>
      (super.noSuchMethod(Invocation.getter(#parameters),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
  @override
  _i10.Future<_i6.DocumentReference<T>> add(T? data) =>
      (super.noSuchMethod(Invocation.method(#add, [data]),
              returnValue: _i10.Future<_i6.DocumentReference<T>>.value(
                  _FakeDocumentReference_14<T>(
                      this, Invocation.method(#add, [data]))))
          as _i10.Future<_i6.DocumentReference<T>>);
  @override
  _i6.DocumentReference<T> doc([String? path]) => (super.noSuchMethod(
      Invocation.method(#doc, [path]),
      returnValue: _FakeDocumentReference_14<T>(
          this, Invocation.method(#doc, [path]))) as _i6.DocumentReference<T>);
  @override
  _i6.CollectionReference<R> withConverter<R extends Object?>(
          {_i6.FromFirestore<R>? fromFirestore,
          _i6.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeCollectionReference_9<R>(
                  this,
                  Invocation.method(
                      #withConverter, [], {#fromFirestore: fromFirestore, #toFirestore: toFirestore})))
          as _i6.CollectionReference<R>);
  @override
  _i6.Query<T> endAtDocument(_i6.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(Invocation.method(#endAtDocument, [documentSnapshot]),
              returnValue: _FakeQuery_13<T>(
                  this, Invocation.method(#endAtDocument, [documentSnapshot])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> endAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#endAt, [values]),
              returnValue:
                  _FakeQuery_13<T>(this, Invocation.method(#endAt, [values])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> endBeforeDocument(
          _i6.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
              Invocation.method(#endBeforeDocument, [documentSnapshot]),
              returnValue: _FakeQuery_13<T>(this,
                  Invocation.method(#endBeforeDocument, [documentSnapshot])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> endBefore(List<Object?>? values) => (super.noSuchMethod(
          Invocation.method(#endBefore, [values]),
          returnValue:
              _FakeQuery_13<T>(this, Invocation.method(#endBefore, [values])))
      as _i6.Query<T>);
  @override
  _i10.Future<_i6.QuerySnapshot<T>> get([_i5.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue: _i10.Future<_i6.QuerySnapshot<T>>.value(
                  _FakeQuerySnapshot_12<T>(
                      this, Invocation.method(#get, [options]))))
          as _i10.Future<_i6.QuerySnapshot<T>>);
  @override
  _i6.Query<T> limit(int? limit) =>
      (super.noSuchMethod(Invocation.method(#limit, [limit]),
              returnValue:
                  _FakeQuery_13<T>(this, Invocation.method(#limit, [limit])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> limitToLast(int? limit) => (super.noSuchMethod(
          Invocation.method(#limitToLast, [limit]),
          returnValue:
              _FakeQuery_13<T>(this, Invocation.method(#limitToLast, [limit])))
      as _i6.Query<T>);
  @override
  _i10.Stream<_i6.QuerySnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: _i10.Stream<_i6.QuerySnapshot<T>>.empty())
          as _i10.Stream<_i6.QuerySnapshot<T>>);
  @override
  _i6.Query<T> orderBy(Object? field, {bool? descending = false}) =>
      (super.noSuchMethod(
              Invocation.method(#orderBy, [field], {#descending: descending}),
              returnValue: _FakeQuery_13<T>(
                  this,
                  Invocation.method(
                      #orderBy, [field], {#descending: descending})))
          as _i6.Query<T>);
  @override
  _i6.Query<T> startAfterDocument(
          _i6.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
              Invocation.method(#startAfterDocument, [documentSnapshot]),
              returnValue: _FakeQuery_13<T>(this,
                  Invocation.method(#startAfterDocument, [documentSnapshot])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> startAfter(List<Object?>? values) => (super.noSuchMethod(
          Invocation.method(#startAfter, [values]),
          returnValue:
              _FakeQuery_13<T>(this, Invocation.method(#startAfter, [values])))
      as _i6.Query<T>);
  @override
  _i6.Query<T> startAtDocument(
          _i6.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
              Invocation.method(#startAtDocument, [documentSnapshot]),
              returnValue: _FakeQuery_13<T>(this,
                  Invocation.method(#startAtDocument, [documentSnapshot])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> startAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#startAt, [values]),
              returnValue:
                  _FakeQuery_13<T>(this, Invocation.method(#startAt, [values])))
          as _i6.Query<T>);
  @override
  _i6.Query<T> where(Object? field,
          {Object? isEqualTo,
          Object? isNotEqualTo,
          Object? isLessThan,
          Object? isLessThanOrEqualTo,
          Object? isGreaterThan,
          Object? isGreaterThanOrEqualTo,
          Object? arrayContains,
          List<Object?>? arrayContainsAny,
          List<Object?>? whereIn,
          List<Object?>? whereNotIn,
          bool? isNull}) =>
      (super.noSuchMethod(
          Invocation.method(#where, [
            field
          ], {
            #isEqualTo: isEqualTo,
            #isNotEqualTo: isNotEqualTo,
            #isLessThan: isLessThan,
            #isLessThanOrEqualTo: isLessThanOrEqualTo,
            #isGreaterThan: isGreaterThan,
            #isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            #arrayContains: arrayContains,
            #arrayContainsAny: arrayContainsAny,
            #whereIn: whereIn,
            #whereNotIn: whereNotIn,
            #isNull: isNull
          }),
          returnValue: _FakeQuery_13<T>(
              this,
              Invocation.method(#where, [
                field
              ], {
                #isEqualTo: isEqualTo,
                #isNotEqualTo: isNotEqualTo,
                #isLessThan: isLessThan,
                #isLessThanOrEqualTo: isLessThanOrEqualTo,
                #isGreaterThan: isGreaterThan,
                #isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
                #arrayContains: arrayContains,
                #arrayContainsAny: arrayContainsAny,
                #whereIn: whereIn,
                #whereNotIn: whereNotIn,
                #isNull: isNull
              }))) as _i6.Query<T>);
}

class MockQuerySnapshot<T extends Object?> extends _i1.Mock
    implements _i6.QuerySnapshot<T> {
  MockQuerySnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i6.QueryDocumentSnapshot<T>> get docs =>
      (super.noSuchMethod(Invocation.getter(#docs),
              returnValue: <_i6.QueryDocumentSnapshot<T>>[])
          as List<_i6.QueryDocumentSnapshot<T>>);
  @override
  List<_i6.DocumentChange<T>> get docChanges => (super.noSuchMethod(
      Invocation.getter(#docChanges),
      returnValue: <_i6.DocumentChange<T>>[]) as List<_i6.DocumentChange<T>>);
  @override
  _i6.SnapshotMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
              returnValue:
                  _FakeSnapshotMetadata_19(this, Invocation.getter(#metadata)))
          as _i6.SnapshotMetadata);
  @override
  int get size =>
      (super.noSuchMethod(Invocation.getter(#size), returnValue: 0) as int);
}

class MockDocumentReference<T extends Object?> extends _i1.Mock
    implements _i6.DocumentReference<T> {
  MockDocumentReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FirebaseFirestore get firestore => (super.noSuchMethod(
          Invocation.getter(#firestore),
          returnValue:
              _FakeFirebaseFirestore_18(this, Invocation.getter(#firestore)))
      as _i6.FirebaseFirestore);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i6.CollectionReference<T> get parent => (super.noSuchMethod(
          Invocation.getter(#parent),
          returnValue:
              _FakeCollectionReference_9<T>(this, Invocation.getter(#parent)))
      as _i6.CollectionReference<T>);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i6.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_9<Map<String, dynamic>>(
                  this, Invocation.method(#collection, [collectionPath])))
          as _i6.CollectionReference<Map<String, dynamic>>);
  @override
  _i10.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> update(Map<String, Object?>? data) =>
      (super.noSuchMethod(Invocation.method(#update, [data]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<_i6.DocumentSnapshot<T>> get([_i5.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue: _i10.Future<_i6.DocumentSnapshot<T>>.value(
                  _FakeDocumentSnapshot_20<T>(
                      this, Invocation.method(#get, [options]))))
          as _i10.Future<_i6.DocumentSnapshot<T>>);
  @override
  _i10.Stream<_i6.DocumentSnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: _i10.Stream<_i6.DocumentSnapshot<T>>.empty())
          as _i10.Stream<_i6.DocumentSnapshot<T>>);
  @override
  _i10.Future<void> set(T? data, [_i5.SetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#set, [data, options]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i6.DocumentReference<R> withConverter<R>(
          {_i6.FromFirestore<R>? fromFirestore,
          _i6.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeDocumentReference_14<R>(
                  this,
                  Invocation.method(
                      #withConverter, [], {#fromFirestore: fromFirestore, #toFirestore: toFirestore})))
          as _i6.DocumentReference<R>);
}

class MockDocumentSnapshot<T extends Object?> extends _i1.Mock
    implements _i6.DocumentSnapshot<T> {
  MockDocumentSnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i6.DocumentReference<T> get reference => (super.noSuchMethod(
          Invocation.getter(#reference),
          returnValue:
              _FakeDocumentReference_14<T>(this, Invocation.getter(#reference)))
      as _i6.DocumentReference<T>);
  @override
  _i6.SnapshotMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
              returnValue:
                  _FakeSnapshotMetadata_19(this, Invocation.getter(#metadata)))
          as _i6.SnapshotMetadata);
  @override
  bool get exists =>
      (super.noSuchMethod(Invocation.getter(#exists), returnValue: false)
          as bool);
  @override
  dynamic get(Object? field) =>
      super.noSuchMethod(Invocation.method(#get, [field]));
  @override
  dynamic operator [](Object? field) =>
      super.noSuchMethod(Invocation.method(#[], [field]));
}

class MockHttpsCallable extends _i1.Mock implements _i8.HttpsCallable {
  MockHttpsCallable() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.HttpsCallablePlatform get delegate => (super.noSuchMethod(
          Invocation.getter(#delegate),
          returnValue:
              _FakeHttpsCallablePlatform_21(this, Invocation.getter(#delegate)))
      as _i7.HttpsCallablePlatform);
  @override
  _i10.Future<_i8.HttpsCallableResult<T>> call<T>([dynamic parameters]) =>
      (super.noSuchMethod(Invocation.method(#call, [parameters]),
              returnValue: _i10.Future<_i8.HttpsCallableResult<T>>.value(
                  _FakeHttpsCallableResult_22<T>(
                      this, Invocation.method(#call, [parameters]))))
          as _i10.Future<_i8.HttpsCallableResult<T>>);
}
