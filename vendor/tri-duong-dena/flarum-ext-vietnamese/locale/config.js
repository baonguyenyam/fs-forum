// Custom French Moment.js Locales
// Based on: https://github.com/moment/moment/blob/develop/locale/fr.js

moment.locale('vi', {
  months : 'tháng 1_tháng 2_tháng 3_tháng 4_tháng 5_tháng 6_tháng 7_tháng 8_tháng 9_tháng 10_tháng 11_tháng 12'.split('_'),
  monthsShort : 'Th01_Th02_Th03_Th04_Th05_Th06_Th07_Th08_Th09_Th10_Th11_Th12'.split('_'),
  monthsParseExact : true,
  weekdays : 'Chủ nhật_thứ Hai_thứ Ba_thứ Tư_thứ Năm_thứ Sáu_thứ Bảy'.split('_'),
  weekdaysShort : 'CN_T2_T3_T4_T5_T6_T7'.split('_'),
  weekdaysMin : 'CN_T2_T3_T4_T5_T6_T7'.split('_'),
  weekdaysParseExact : true,
  longDateFormat : {
    LT : 'HH:mm',
    LTS : 'HH:mm:ss',
    L : 'DD/MM/YYYY', // Swiss French uses DD.MM.YYYY. Canadian French uses YYYY-MM-DD.
    LL : 'D MMMM [năm] YYYY',
    LLL : 'D MMMM [năm] YYYY HH:mm',
    LLLL : 'dddd, D MMMM [năm] YYYY HH:mm'
  },
  calendar : {
    sameDay : '[Hôm nay lúc] LT',
    nextDay : '[Ngày mai lúc] LT',
    nextWeek : 'dddd [tuần tới lúc] LT',
    lastDay : '[Hôm qua lúc] LT',
    lastWeek : 'dddd [tuần trước lúc] LT',
    sameElse : 'L'
  },
  relativeTime : {
    future : '%s tới',
    past : '%s trước',
    s : 'vài giây',
    m : 'một phút',
    mm : '%d phút',
    h : 'một giờ',
    hh : '%d giờ',
    d : 'một ngày',
    dd : '%d ngày',
    M : 'một tháng',
    MM : '%d tháng',
    y : 'một năm',
    yy : '%d năm'
  },
  dayOfMonthOrdinalParse : /\d{1,2}/,
  ordinal : function (number, period) {
    return number;
  },
  week : {
    dow : 1, // Monday is the first day of the week. Canadian French uses 0, because Sunday is the first day of the week.
    doy : 4  // The week that contains Jan 4th is the first week of the year. Canadian French uses 6, because the week that contains Jan 1st is the first week of the year.
  }
});
