import 'package:intl/intl.dart';

class LocalizationManager{

static bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
}