import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/dates.dart';

class MonthTitle extends StatelessWidget {
  const MonthTitle({
    @required this.month,
    this.customMonthNames,
  });

  final int month;
  final List<String> customMonthNames;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        getMonthName(month, customNames: customMonthNames),
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
        maxLines: 1,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
    );
  }
}
