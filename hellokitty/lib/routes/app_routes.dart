import '../screens/home_page.dart';
import '../screens/pet_profile.dart';
import '../screens/auto_feeding.dart';
import '../screens/manual_feeding.dart';
import '../screens/feeding_records.dart';
import '../screens/feeding_records.dart';

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const home = '/';
  static const petProfile = '/petprofile';
  static const autoFeeding = '/autofeeding';
  static const manualFeeding = '/manualfeeding';
  static const feedingRecords = '/feedingrecords';
}

/// used to switch pages
class Routes {
  static const home = _Paths.home;
  static const petProfile = _Paths.petProfile;
  static const autoFeeding = _Paths.autoFeeding;
  static const manualFeeding = _Paths.manualFeeding;
  static const feedingRecords = _Paths.feedingRecords;
}

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.home;

  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.petProfile: (context) => const PetProfile(),
    Routes.autoFeeding: (context) => const AutoFeeding(),
    Routes.manualFeeding: (context) => const ManualFeeding(),
    Routes.feedingRecords: (context) => const FeedingRecords(),
  };
}
