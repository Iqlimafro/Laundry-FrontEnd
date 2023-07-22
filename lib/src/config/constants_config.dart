import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

void getToast(String text) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black45,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
String dateFormatddMMMMyyyyhhmm(DateTime? date) {
  if (date != null)
    return '${DateFormat(
      'dd MMMM yyyy, HH:mm',
      'id_ID',
    ).format(date)}';
  return '';
}

String formatDate(String datetime) {
  DateTime parsedDatetime = DateTime.parse(datetime);
  String formattedDate =
      DateFormat('dd MMMM yyyy', 'id_ID').format(parsedDatetime);
  return formattedDate;
}
