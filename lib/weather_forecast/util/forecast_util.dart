import 'package:intl/intl.dart';

class Util{
  static String appId = "ed60fcfbd110ee65c7150605ea8aceea";

  static String getFormattedDate(DateTime dateTime){

    return new DateFormat("EEEE, MMM d, y").format(dateTime);
    //..99
  }
}
