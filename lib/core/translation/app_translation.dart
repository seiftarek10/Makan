import 'package:get/get.dart';
// Import your keys file here
import 'localization_keys.dart'; 

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      LocalizationKeys.welcome: 'Welcome, where do we want to travel?',
      LocalizationKeys.searchHint: 'Search for a country, destination, or landmark',
      LocalizationKeys.asia: 'Asia (48 Countries)',
      LocalizationKeys.europe: 'Europe (50 Countries)',
      LocalizationKeys.africa: 'Africa (54 Countries)',
      LocalizationKeys.northAmerica: 'North America (23 Countries)',
      LocalizationKeys.southAmerica: 'South America (12 Countries)',
      LocalizationKeys.australia: 'Australia (14 Countries)',
      LocalizationKeys.mostPopular: 'Most Popular',
      LocalizationKeys.viewAll: 'View All',
      LocalizationKeys.exploreEurope: 'Explore Europe',
      LocalizationKeys.destinationsWaiting: '50 countries waiting to be explored',
      LocalizationKeys.france: 'France',
      LocalizationKeys.paris: 'Paris',
      LocalizationKeys.eiffelTower: 'Eiffel Tower',
      LocalizationKeys.about: 'About',
      LocalizationKeys.eiffelDescription: 'The Eiffel Tower is a symbol of the city of Paris. It was built in 1889 and is 324 meters tall.',
      LocalizationKeys.additionalImages: 'Additional Images',
      LocalizationKeys.visitInfo: 'Visit Information',
      LocalizationKeys.ticketPrice: 'Ticket Price',
      LocalizationKeys.openingHours: 'Opening Hours',
      LocalizationKeys.weather: 'Weather',
      LocalizationKeys.bookVisit: 'Book a Visit',
    },
    'ar_AE': {
      LocalizationKeys.welcome: 'مرحباً، إلى أين نريد السفر؟',
      LocalizationKeys.searchHint: 'ابحث عن دولة، وجهة أو معلم',
      LocalizationKeys.asia: 'آسيا (48 دولة)',
      LocalizationKeys.europe: 'أوروبا (50 دولة)',
      LocalizationKeys.africa: 'أفريقيا (54 دولة)',
      LocalizationKeys.northAmerica: 'أمريكا الشمالية (23 دولة)',
      LocalizationKeys.southAmerica: 'أمريكا الجنوبية (12 دولة)',
      LocalizationKeys.australia: 'أستراليا (14 دولة)',
      LocalizationKeys.mostPopular: 'الوجهات الأكثر شهرة',
      LocalizationKeys.viewAll: 'عرض الكل',
      LocalizationKeys.exploreEurope: 'استكشف أوروبا',
      LocalizationKeys.destinationsWaiting: '50 دولة تنتظر لاستكشافها',
      LocalizationKeys.france: 'فرنسا',
      LocalizationKeys.paris: 'باريس',
      LocalizationKeys.eiffelTower: 'برج إيفل',
      LocalizationKeys.about: 'نبذة',
      LocalizationKeys.eiffelDescription: 'برج إيفل هو رمز لمدينة باريس. تم بناؤه في عام 1889 ويبلغ ارتفاعه 324 متراً.',
      LocalizationKeys.additionalImages: 'صور إضافية',
      LocalizationKeys.visitInfo: 'معلومات الزيارة',
      LocalizationKeys.ticketPrice: 'سعر التذكرة',
      LocalizationKeys.openingHours: 'ساعات العمل',
      LocalizationKeys.weather: 'الطقس',
      LocalizationKeys.bookVisit: 'احجز زيارة',
    },
  };
}