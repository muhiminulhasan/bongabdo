# বঙ্গাব্দ (bongabdo) বাংলা একাডেমী প্রণীত নিয়ম অনুসারে গণিত। 
# Bongabdo- Bengali/Bangla calendar library for dart lang. 


## usage

```dart

//ধরা যাক আজকের তারিখ :  Jan 18 00:27:33  2020
//আগের নিয়ম অনুসারে বৈশাখ, জ্যৈষ্ঠ, আষাঢ়, শ্রাবণ, ভাদ্র বছরের প্রথম এই পাঁচ মাস ৩১ দিন হিসেবে।
//ফাল্গুন মাস হবে ২৯ দিনের, কেবল লিপইয়ারের বছর ফাল্গুন ৩০ দিনের মাস হবে।

var _today = Bongabdo.now();
print(_today.bDay); // ৫ 
print(_today.bMonth); // মাঘ 
print(_today.bYear); // ১৪২৬ 
print(_today.bSeason); // শীত 
print(_today.bWeekDay); // শনিবার
```

```dart
//নতুন  নিয়ম অনুসারে বৈশাখ, জ্যৈষ্ঠ, আষাঢ়, শ্রাবণ, ভাদ্র,আশ্বিন বছরের প্রথম এই ছয় মাস ৩১ দিন হিসেবে। 
var _today = Bongabdo.now("new");
print(_today.bDay); // ৪  
```

```dart
// 
var _date = new Bongabdo.fromDate(new DateTime(2020, 02, 21),"new");
print(_date.fullDate()); //৮, ফাল্গুন, ১৪২৬ বঙ্গাব্দ, বসন্ত কাল রোজ শুক্রবার.
```


### Credit and reference.

This package is ported from [Nuhil Mehdy's](https://github.com/nuhil) [jQuery plugin to display Time-Stamp, based on Bangla Calendar](https://github.com/nuhil/bangla-calendar)

বাংলা ক্যালেন্ডার আবারো পরিবর্তন, জাতীয় ঐতিহাসিক দিনের সঙ্গে সমন্বয় [BBC Bangla](https://www.bbc.com/bengali/news-50082316)


### **License**
The **Bongabdo** is an open-source software licensed under the [MIT License](LICENSE.md).