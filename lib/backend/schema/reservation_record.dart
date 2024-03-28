import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationRecord extends FirestoreRecord {
  ReservationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Reservation_id" field.
  int? _reservationId;
  int get reservationId => _reservationId ?? 0;
  bool hasReservationId() => _reservationId != null;

  // "Reservation_time" field.
  DateTime? _reservationTime;
  DateTime? get reservationTime => _reservationTime;
  bool hasReservationTime() => _reservationTime != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Exam_id" field.
  DocumentReference? _examId;
  DocumentReference? get examId => _examId;
  bool hasExamId() => _examId != null;

  // "Lesson_id" field.
  DocumentReference? _lessonId;
  DocumentReference? get lessonId => _lessonId;
  bool hasLessonId() => _lessonId != null;

  // "Client_id" field.
  DocumentReference? _clientId;
  DocumentReference? get clientId => _clientId;
  bool hasClientId() => _clientId != null;

  void _initializeFields() {
    _reservationId = castToType<int>(snapshotData['Reservation_id']);
    _reservationTime = snapshotData['Reservation_time'] as DateTime?;
    _status = snapshotData['Status'] as String?;
    _examId = snapshotData['Exam_id'] as DocumentReference?;
    _lessonId = snapshotData['Lesson_id'] as DocumentReference?;
    _clientId = snapshotData['Client_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservation');

  static Stream<ReservationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationRecord.fromSnapshot(s));

  static Future<ReservationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationRecord.fromSnapshot(s));

  static ReservationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationRecordData({
  int? reservationId,
  DateTime? reservationTime,
  String? status,
  DocumentReference? examId,
  DocumentReference? lessonId,
  DocumentReference? clientId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Reservation_id': reservationId,
      'Reservation_time': reservationTime,
      'Status': status,
      'Exam_id': examId,
      'Lesson_id': lessonId,
      'Client_id': clientId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationRecordDocumentEquality implements Equality<ReservationRecord> {
  const ReservationRecordDocumentEquality();

  @override
  bool equals(ReservationRecord? e1, ReservationRecord? e2) {
    return e1?.reservationId == e2?.reservationId &&
        e1?.reservationTime == e2?.reservationTime &&
        e1?.status == e2?.status &&
        e1?.examId == e2?.examId &&
        e1?.lessonId == e2?.lessonId &&
        e1?.clientId == e2?.clientId;
  }

  @override
  int hash(ReservationRecord? e) => const ListEquality().hash([
        e?.reservationId,
        e?.reservationTime,
        e?.status,
        e?.examId,
        e?.lessonId,
        e?.clientId
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservationRecord;
}
