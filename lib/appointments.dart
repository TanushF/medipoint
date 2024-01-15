import 'patient.dart';

class Appointment {
  int? id; //needed?
  bool isAvailable = true;
  int patient;
  int startTime;
  int endTime;

  Appointment(
      {this.id,
      required this.isAvailable,
      required this.patient,
      required this.startTime,
      required this.endTime});

  Appointment.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        isAvailable = res["isAvailable"],
        patient = res["patient"],
        startTime = res['startTime'],
        endTime = res['endTime'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'isAvailable': isAvailable,
      'patient': patient,
      'startTime': startTime,
      'endTime': endTime
    };
  }
}
