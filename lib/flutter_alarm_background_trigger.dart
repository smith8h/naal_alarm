import 'package:naal_alarm/alarm_methods.dart';
import 'package:naal_alarm/flutter_alarm_background_trigger_method_channel.dart';
import 'package:naal_alarm/src/AlarmItem.dart';
import 'package:naal_alarm/typedefs.dart';
import 'flutter_alarm_background_trigger_platform_interface.dart';

export 'package:naal_alarm/src/AlarmItem.dart';

class FlutterAlarmBackgroundTrigger implements AlarmMethods {
  static void initialize() =>
      MethodChannelFlutterAlarmBackgroundTrigger.initialize();

  @override
  void onForegroundAlarmEventHandler(OnForegroundAlarmEvent alarmEvent) {
    FlutterAlarm.instance
        .onForegroundAlarmEventHandler(alarmEvent);
  }

  @override
  Future<bool> requestPermission() =>
      FlutterAlarm.instance.requestPermission();

  @override
  Future<AlarmItem> addAlarm(DateTime time,
          {String? uid,
          Map<String, dynamic>? payload,
          Duration? screenWakeDuration}) =>
      FlutterAlarm.instance.addAlarm(time,
          uid: uid, payload: payload, screenWakeDuration: screenWakeDuration);

  @override
  Future<void> deleteAlarm(int id) =>
      FlutterAlarm.instance.deleteAlarm(id);

  @override
  Future<void> deleteAlarmsByPayload(Map<String, dynamic> payload) =>
      FlutterAlarm.instance
          .deleteAlarmsByPayload(payload);

  @override
  Future<void> deleteAlarmsByTime(DateTime dateTime) =>
      FlutterAlarm.instance
          .deleteAlarmsByTime(dateTime);

  @override
  Future<void> deleteAlarmsByUid(String uid) =>
      FlutterAlarm.instance.deleteAlarmsByUid(uid);

  @override
  Future<void> deleteAllAlarms() =>
      FlutterAlarm.instance.deleteAllAlarms();

  @override
  Future<AlarmItem> getAlarm(int id) =>
      FlutterAlarm.instance.getAlarm(id);

  @override
  Future<List<AlarmItem>> getAlarmByPayload(Map<String, dynamic> payload) =>
      FlutterAlarm.instance.getAlarmByPayload(payload);

  @override
  Future<List<AlarmItem>> getAlarmByTime(DateTime time) =>
      FlutterAlarm.instance.getAlarmByTime(time);

  @override
  Future<List<AlarmItem>> getAlarmByUid(String uid) =>
      FlutterAlarm.instance.getAlarmByUid(uid);

  @override
  Future<List<AlarmItem>> getAllAlarms() =>
      FlutterAlarm.instance.getAllAlarms();
}
