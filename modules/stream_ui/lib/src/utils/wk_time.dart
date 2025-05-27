import 'package:common/common.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class WKTimeUtils {
  static String getChatTime(int timestamp) {
    final todayCalendar = DateTime.now();
    final otherCalendar = DateTime.fromMillisecondsSinceEpoch(timestamp);

    final context = Global.context!;
    String result;
    String timeFormat;
    String yearTimeFormat;

    timeFormat = "M/d";
    yearTimeFormat = "yyyy/M/d";

    if (context.isCN) {
      timeFormat = "M月d日";
      yearTimeFormat = "yyyy年M月d日";
    }

    bool isSameYear = todayCalendar.year == otherCalendar.year;
    if (isSameYear) {
      int todayMonth = todayCalendar.month;
      int otherMonth = otherCalendar.month;
      if (todayMonth == otherMonth) {
        int temp = todayCalendar.day - otherCalendar.day;
        switch (temp) {
          case 0:
            final timeSpace = getTimeSpace(context, timestamp);
            result = "${time2HourStr(context, timestamp)} $timeSpace";
            break;
          case 1:
            result = context.t.c.dateFormat.yesterday;
            break;
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
            final dayOfMonth = getWeekOfMonth(otherCalendar);
            final todayOfMonth = getWeekOfMonth(todayCalendar); // 获取今天在一个月的第几周
            if (dayOfMonth == todayOfMonth) {
              final dayOfWeek = otherCalendar.weekday;
              if (dayOfWeek != 1) {
                // 判断当前是否是星期日
                result = context.t.c.dateFormat.weeks[dayOfWeek - 1] +
                    time2HourStr(context, timestamp);
              } else {
                result = DateFormat(timeFormat).format(otherCalendar);
              }
            } else {
              result = DateFormat(timeFormat).format(otherCalendar);
            }
            break;
          default:
            result = DateFormat(timeFormat).format(otherCalendar);
            break;
        }
      }else {
        result = DateFormat(timeFormat).format(otherCalendar);
      }
    }else {
      result = DateFormat(yearTimeFormat).format(otherCalendar);
    }

    return result;
  }

  static String getTimeSpace(BuildContext context, int time) {
    final date = DateTime.fromMillisecondsSinceEpoch(time);
    final a = date.hour;
    if (a <= 12) {
      return context.t.c.dateFormat.am;
    } else {
      return context.t.c.dateFormat.pm;
    }
  }

  static String time2HourStr(BuildContext context, int time) {
    final date = DateTime.fromMillisecondsSinceEpoch(time);
    if (is24Hour()) {
      return DateFormat('HH:mm').format(date);
    } else {
      return DateFormat('hh:mm').format(date);
    }
  }

  static bool is24Hour() {
    final timeFormat = DateFormat.jm().format(DateTime.now());
    return !timeFormat.contains('PM') && !timeFormat.contains('AM');
  }

  static int getWeekOfMonth(DateTime date) {
    // 当月第一天
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    // 第一周的第一天是星期几（1=周一, 7=周日）
    final firstWeekday = firstDayOfMonth.weekday;
    // 当前是这个月的第几天
    final day = date.day;
    // 计算偏移量（因为第一天可能不是周一）
    final adjustedDay = day + (firstWeekday - 1);
    // 计算第几周（ceil 向上取整）
    return (adjustedDay / 7).ceil();
  }
}
