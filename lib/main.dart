import 'package:flutter/material.dart';
import 'package:onescreen/home_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              // shadowColor: MaterialStateProperty.all(const Color(0xFFEBEDF7)),
              // overlayColor: MaterialStateProperty.all(const Color(0xFFEBEDF7)),
              foregroundColor:
                  MaterialStateProperty.all(const Color(0xFF1a232d)),
              // surfaceTintColor: MaterialStateProperty.all(const Color(0xFFEBEDF7)),
              // backgroundColor:
              //     MaterialStateProperty.all(const Color(0xFFEBEDF7)),
            ),
          ),
          textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 42.sp,
              color: const Color(0xFF273544),
            ),
            titleLarge: TextStyle(
              fontSize: 17.sp,
              color: const Color(0xFF304154),
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF2bd98e),
              fontWeight: FontWeight.bold,
            ),
            headlineSmall: TextStyle(
              fontSize: 11.sp,
              color: const Color(0xFF2bd98e),
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF304154),
            ),
            titleSmall: TextStyle(
              fontSize: 11.sp,
              color: const Color(0xFF304154),
            ),
            bodyLarge: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF384c61),
            ),
            bodyMedium: TextStyle(
              fontSize: 11.sp,
              color: const Color(0xFF384c61),
            ),
            bodySmall: TextStyle(
              fontSize: 8.sp,
              color: const Color(0xFF384c61),
            ),
            labelLarge: TextStyle(
              fontSize: 17.sp,
              color: const Color(0xFF6D8CAB),
            ),
            labelSmall: TextStyle(
              fontSize: 8.sp,
              color: const Color(0xFF6D8CAB),
            ),
          ),
        ),
        home: const HomeScreen(),
      );
    });
  }
}
