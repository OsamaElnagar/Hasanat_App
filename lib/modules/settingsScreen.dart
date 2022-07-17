import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasanat/shared/Bloc/cubit.dart';
import 'package:hasanat/shared/Bloc/states.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        bool value = false;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Dark Theme ',
                      style: TextStyle(
                        color:
                            cubit.isDark == true ? Colors.black : Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: value,
                      onChanged: (v) {
                        setState(() {
                          value = v;
                          value != value;
                        });
                        cubit.changeAppMode();
                      },
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Setting 2',
                      style: TextStyle(
                        color:
                            cubit.isDark == true ? Colors.black : Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (b) {},
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Setting 3',
                      style: TextStyle(
                        color:
                            cubit.isDark == true ? Colors.black : Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (b) {},
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Setting 4',
                      style: TextStyle(
                        color:
                            cubit.isDark == true ? Colors.black : Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: true,
                      onChanged: (b) {},
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
