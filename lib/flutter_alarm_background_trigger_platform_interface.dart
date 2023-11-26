import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:naal_alarm/src/AlarmItem.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'alarm_methods.dart';
import 'flutter_alarm_background_trigger_method_channel.dart';

abstract class FlutterAlarm extends PlatformInterface
    with AlarmMethods {
  /// Constructs a FlutterAlarm.
  FlutterAlarm() : super(token: _token);

  static final Object _token = Object();

  static FlutterAlarm _instance =
      MethodChannelFlutterAlarmBackgroundTrigger();

  final methodChannel = const MethodChannel('flutter_alarm_background_trigger');

  /// The default instance of [FlutterAlarm] to use.
  ///
  /// Defaults to [MethodChannelFlutterAlarmBackgroundTrigger].
  static FlutterAlarm get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAlarm] when
  /// they register themselves.
  static set instance(FlutterAlarm instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<T?> invokeNativeMethod<T>(ChannelMethods method, [AlarmItem? alarm]) {
    return instance.methodChannel
        .invokeMethod<T>(describeEnum(method), alarm?.toMap());
  }

  static Future<T?> invokeNativeMethodStatic<T>(ChannelMethods method,
      [AlarmItem? alarm]) {
    return instance.invokeNativeMethod(method, alarm);
  }
}
