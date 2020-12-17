part of app.util;

class ThemeApp {
  ThemeApp._();

  static ThemeData get theme => ThemeData.light()
      .copyWith(
        disabledColor: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        cardTheme: CardTheme(
          elevation: 2.0,
          color: Colors.white,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0)),
          ),
        ),
      );
}