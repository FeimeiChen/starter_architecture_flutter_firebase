import 'package:equatable/equatable.dart';
import 'package:starter_architecture_flutter_firebase/src/features/jobs/domain/job.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

typedef EntryID = String;

@freezed
class Entry with _$Entry {
  factory Entry({
    required EntryID id,
    required JobID jobId,
    required DateTime start,
    required DateTime end,
    @Default('') String comment
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  static double durationInHours(DateTime start, DateTime end) {
    return end.difference(start).inMinutes.toDouble() / 60.0;
  }

}

