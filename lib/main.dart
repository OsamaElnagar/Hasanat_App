import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasanat/shared/Bloc/cubit.dart';
import 'package:hasanat/shared/Bloc/states.dart';
import 'package:hasanat/shared/network/local/cache_helper.dart';
import 'package:hasanat/shared/network/remote/bloc_observer.dart';
import 'package:hasanat/shared/styles/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'layout/homeLayout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await DesktopWindow.setMinWindowSize(
  //   const Size(450, 150),
  // );
  await CacheHelper.init();
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');
  int? counter = CacheHelper.getCounter('counter');
  BlocOverrides.runZoned(
        () {
      runApp(MyApp(
        isDark: isDark,
        counter: counter,
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  final int? counter;

  const MyApp({required this.isDark, Key? key, required this.counter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          AppCubit()
            ..changeAppMode(fromShared: isDark)
            ..changeCounter(fromShared: counter),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            theme: lightTheme,
            themeMode:
            AppCubit
                .get(context)
                .isDark ? ThemeMode.light : ThemeMode.dark,
            home: ScreenTypeLayout(
              mobile:HomeLayout(),

            ),
          );
        },
      ),
    );
  }
}
