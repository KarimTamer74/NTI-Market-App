import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/utils/app_router.dart';
import 'package:new_project/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        AppRouter appRouter = AppRouter();
        return MaterialApp(
            theme: ThemeData(fontFamily: "SpaceGrotesk"),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
            onGenerateRoute: appRouter.onGenerateRoute);
      },
    );
  }
}
