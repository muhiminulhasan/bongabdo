import 'utils/utils.dart';

class Bongabdo {
  var bDay;
  var bMonth;
  var bYear;
  var bSeason;
  var bWeekDay;
  var version;

  Bongabdo.addMonth(int year, int month) {
    bYear = month % 12 == 0 ? year - 1 : year;
    bMonth = month % 12 == 0 ? 12 : month % 12;
    bDay = 1;
  }

  Bongabdo.fromDate(DateTime date, [this.version]) {
    toBanglaDate(date.year, date.month, date.day);
  }

  Bongabdo.now([this.version]) {
    var today = DateTime.now();
    toBanglaDate(today.year, today.month, today.day);
  }

  bDate(year, month, day, weekday, season) {
    this.bYear = year;
    this.bMonth = month;
    this.bDay = day;
    this.bWeekDay = weekday;
    this.bSeason = season;
  }

  List<int> toList() => [bYear, bMonth, bDay];

  String fullDate() => "$bDay, $bMonth, $bYear বঙ্গাব্দ, $bSeason কাল, রোজ $bWeekDay";

  bool isnew() => this.version == "new";

  toBanglaDate(gYear, gMonth, gDay) {
    var totalDaysInMonth = isnew() ? totalDaysInMonthNew : totalDaysInMonthOld;

    isLeapYear(gYear) && isnew()
        ? totalDaysInMonth[10] = 29
        : totalDaysInMonth[10] = 31;

    /* if (isLeapYear(gYear)){
      totalDaysInMonth[10] = 31;
    } */

    int banglaYear =
        (gMonth < 4 || (gMonth == 4 && gDay < 14)) ? gYear - 594 : gYear - 593;

    int epochYear =
        (gMonth < 4 || (gMonth == 4 && gDay < 14)) ? gYear - 1 : gYear;

    var difference = (DateTime.utc(gYear, gMonth, gDay)
            .difference(DateTime.utc(epochYear, 04, 13)))
        .inDays
        .floor();

    var banglaMonthIndex = 0;

    for (var i = 0; i < banglaMonths.length; i++) {
      if (difference <= totalDaysInMonth[i]) {
        banglaMonthIndex = i;
        break;
      }
      difference -= totalDaysInMonth[i];
    }

    var banglaDate = difference;

    var banglaSeason = banglaSeasons[(banglaMonthIndex / 2).floor()];

    var banglaWeekDay = DateTime(gYear, gMonth, gDay).weekday;
  
    return bDate(translateNumbersToBangla(banglaYear.toString()), banglaMonths[banglaMonthIndex], translateNumbersToBangla(banglaDate.toString()),
        banglaWeekDays[banglaWeekDay], banglaSeason);
  }
}
