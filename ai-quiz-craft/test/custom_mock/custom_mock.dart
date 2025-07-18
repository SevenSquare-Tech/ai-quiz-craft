import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:mockito/mockito.dart';

class HttpsCallableResultMock<T> extends Mock
    implements HttpsCallableResult<T> {
  HttpsCallableResultMock.test(this.data);

  @override
  final T data;
}

class QueryDocumentSnapshotMock<T> extends Mock
    implements QueryDocumentSnapshot<T> {
  QueryDocumentSnapshotMock.test(this.docs, this.id);

  final T docs;
  @override
  final String id;

  @override
  T data() {
    return docs;
  }
}
