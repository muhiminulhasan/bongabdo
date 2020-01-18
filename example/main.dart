import 'package:bongabdo/bongabdo.dart';

main() {
  var _today = Bongabdo.now();
  print(_today.bDay);
  print(_today.bMonth);
  print(_today.bYear);
  print(_today.bSeason);
  print(_today.bWeekDay);

  var _date = new Bongabdo.fromDate(new DateTime(2020, 02, 21), "new");

  print(_date.fullDate());
  print(_date.bDay);
  print(_date.bMonth);
  print(_date.bSeason);
  print(_date.bWeekDay);
}
