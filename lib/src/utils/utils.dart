final banglaMonths = [
  'বৈশাখ',
  'জ্যৈষ্ঠ',
  'আষাঢ়',
  'শ্রাবণ',
  'ভাদ্র',
  'আশ্বিন',
  'কার্তিক',
  'অগ্রহায়ণ',
  'পৌষ',
  'মাঘ',
  'ফাল্গুন',
  'চৈত্র'
];

final Map<int, String> banglaWeekDays = {
  7: "রবিবার",
  1: "সোমবার",
  2: "মঙ্গলবার",
  3: "বুধবার",
  4: "বৃহস্পতিবার",
  5: "শুক্রবার",
  6: "শনিবার"
};

final banglaSeasons = ['গ্রীষ্ম', 'বর্ষা', 'শরৎ', 'হেমন্ত', 'শীত', 'বসন্ত'];

final totalDaysInMonthOld = [31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30];
final totalDaysInMonthNew = [31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30];

bool isLeapYear(int year) =>
    ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);

String translateNumbersToBangla(String number) {
  number = number.replaceAll("0", "০");
  number = number.replaceAll("1", "১");
  number = number.replaceAll("2", "২");
  number = number.replaceAll("3", "৩");
  number = number.replaceAll("4", "৪");
  number = number.replaceAll("5", "৫");
  number = number.replaceAll("6", "৬");
  number = number.replaceAll("7", "৭");
  number = number.replaceAll("8", "৮");
  number = number.replaceAll("9", "৯");
  return number;
}