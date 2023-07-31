// Package imports:
import 'package:dio/dio.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/logger.dart';

class StopWatch {
  static Future<Response> stopWatchApi(
    Future<Response> Function() next,
    String method,
    String endpoint,
  ) async {
    final DateTime startTime = DateTime.now();
    final result = await next();
    final DateTime endTime = DateTime.now();
    final int duration = endTime.difference(startTime).inMilliseconds;
    if (duration >= delayASecond) {
      UtilLogger.log(
        'WARNING RESPONSE TIME',
        '**********************************',
      );
      UtilLogger.log(
        'WARNING RESPONSE TIME',
        '$method: $endpoint - ${duration}ms\n',
      );
      UtilLogger.log(
        'WARNING RESPONSE TIME',
        '**********************************',
      );
    }
    return result;
  }
}
