import 'package:flutter/src/services/platform_channel.dart';
import 'package:naal_alarm/typedefs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:naal_alarm/flutter_alarm_background_trigger.dart';
import 'package:naal_alarm/flutter_alarm_background_trigger_platform_interface.dart';
import 'package:naal_alarm/flutter_alarm_background_trigger_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAlarm
    with MockPlatformInterfaceMixin
    implements FlutterAlarm {

  @override
  Future<AlarmItem> addAlarm(DateTime time, {String? uid, Map<String, dynamic>? payload, Duration? screenWakeDuration}) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAlarm(int id) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAlarmsByPayload(Map<String, dynamic> payload) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAlarmsByTime(DateTime dateTime) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAlarmsByUid(String uid) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAllAlarms() {
    
    throw UnimplementedError();
  }

  @override
  Future<AlarmItem> getAlarm(int id) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<AlarmItem>> getAlarmByPayload(Map<String, dynamic> payload) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<AlarmItem>> getAlarmByTime(DateTime time) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<AlarmItem>> getAlarmByUid(String uid) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<AlarmItem>> getAllAlarms() {
    
    throw UnimplementedError();
  }

  @override
  Future<T?> invokeNativeMethod<T>(ChannelMethods method, [AlarmItem? alarm]) {
    
    throw UnimplementedError();
  }

  @override
  
  MethodChannel get methodChannel => throw UnimplementedError();

  @override
  void onForegroundAlarmEventHandler(OnForegroundAlarmEvent alarmEvent) {
    
  }

  @override
  Future<bool> requestPermission() {
    
    throw UnimplementedError();
  }
}

void main() {
  final FlutterAlarm initialPlatform =
      FlutterAlarm.instance;

  test('$MethodChannelFlutterAlarmBackgroundTrigger is the default instance',
      () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelFlutterAlarmBackgroundTrigger>());
  });

  test('getPlatformVersion', () async {
    MockFlutterAlarm fakePlatform =
        MockFlutterAlarm();
    FlutterAlarm.instance = fakePlatform;
  });
}
