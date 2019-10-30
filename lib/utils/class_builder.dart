import '../screens/calendar_page.dart';
import '../screens/main_page.dart';
import '../screens/settings_page.dart';
import '../screens/information_page.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<MainPage>(() => MainPage());
    register<CalendarPage>(() => CalendarPage());
    register<SettingsPage>(() => SettingsPage());
    register<InformationPage>(() => InformationPage());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}
