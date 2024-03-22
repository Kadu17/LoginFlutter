import 'package:intl/intl.dart';

class UtilsServices {

  priceToCurrency(double price) {

    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    numberFormat.format(price);
  }
}