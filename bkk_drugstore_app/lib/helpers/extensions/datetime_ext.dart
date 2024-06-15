import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension CustomDatetime on DateTime {
  // const String eg = '12 ก.พ. 16:47';
  String format({String? format = 'dd MMM HH:mm'}) {
    initializeDateFormatting("th_TH", null);
    var start = DateFormat(format, 'th_TH').format(toLocal());
    return start;
  }
}
