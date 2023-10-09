import 'package:flutter/material.dart';

class TemaApp {
  static const Color colorPrincipal = Colors.white;
  static const Color colorSecundarioDark = Colors.black;

  static const Color colorTexto = Colors.black;
  static const Color colorTextoContrario = Colors.white;
  static const Color colorTextoSecundario = Colors.red;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: colorPrincipal,
    scaffoldBackgroundColor: colorPrincipal,
    appBarTheme: const AppBarTheme(
      color: colorPrincipal,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: colorTexto,
        fontWeight: FontWeight.w800,
        fontSize: 35,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorPrincipal,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: colorPrincipal,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: colorPrincipal,
          shape: const StadiumBorder(),
          elevation: 0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: colorPrincipal,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPrincipal),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        )),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorSecundarioDark,
    scaffoldBackgroundColor: colorSecundarioDark,
    appBarTheme: const AppBarTheme(
      color: colorSecundarioDark,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: colorTextoContrario,
        fontWeight: FontWeight.w800,
        fontSize: 35,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorPrincipal,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: colorPrincipal,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: colorPrincipal,
          shape: const StadiumBorder(),
          elevation: 0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: colorPrincipal,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorPrincipal),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
