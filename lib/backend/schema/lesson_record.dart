import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonRecord extends FirestoreRecord {
  LessonRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Lesson_id" field.
  int? _lessonId;
  int get lessonId => _lessonId ?? 0;
  bool hasLessonId() => _lessonId != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Available_slot" field.
  int? _availableSlot;
  int get availableSlot => _availableSlot ?? 0;
  bool hasAvailableSlot() => _availableSlot != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Classroom" field.
  String? _classroom;
  String get classroom => _classroom ?? '';
  bool hasClassroom() => _classroom != null;

  void _initializeFields() {
    _lessonId = castToType<int>(snapshotData['Lesson_id']);
    _date = snapshotData['Date'] as DateTime?;
    _availableSlot = castToType<int>(snapshotData['Available_slot']);
    _type = snapshotData['Type'] as String?;
    _classroom = snapshotData['Classroom'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lesson');

  static Stream<LessonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonRecord.fromSnapshot(s));

  static Future<LessonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonRecord.fromSnapshot(s));

  static LessonRecord fromSnapshot(DocumentSnapshot snapshot) => LessonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonRecordData({
  int? lessonId,
  DateTime? date,
  int? availableSlot,
  String? type,
  String? classroom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Lesson_id': lessonId,
      'Date': date,
      'Available_slot': availableSlot,
      'Type': type,
      'Classroom': classroom,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonRecordDocumentEquality implements Equality<LessonRecord> {
  const LessonRecordDocumentEquality();

  @override
  bool equals(LessonRecord? e1, LessonRecord? e2) {
    return e1?.lessonId == e2?.lessonId &&
        e1?.date == e2?.date &&
        e1?.availableSlot == e2?.availableSlot &&
        e1?.type == e2?.type &&
        e1?.classroom == e2?.classroom;
  }

  @override
  int hash(LessonRecord? e) => const ListEquality()
      .hash([e?.lessonId, e?.date, e?.availableSlot, e?.type, e?.classroom]);

  @override
  bool isValidKey(Object? o) => o is LessonRecord;
}
