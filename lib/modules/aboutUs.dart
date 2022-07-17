import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hasanat/layout/homeLayout.dart';
import 'package:hasanat/shared/Bloc/cubit.dart';
import 'package:hasanat/shared/Bloc/states.dart';
import 'package:hasanat/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutUsLayout extends StatelessWidget {
  const AboutUsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Hasanat',
            ),
            leading: IconButton(
              onPressed: () {
                navigateTo(context, HomeLayout());
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  cubit.quickChangeAppMode();
                },
                icon: Icon(
                  cubit.isDark == false
                      ? FontAwesomeIcons.lightbulb
                      : Icons.brightness_3_sharp,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // this space required for designing.
                  const SizedBox(
                    height: 25.0,
                  ),
                  feedItem(
                      context,
                      'About Us',
                      'Hi,\n'
                          'This application is created by MMO.\n '
                          'MMO is a StartUp Software Company interested in creating a beautiful,'
                          ' simple and useful Applications to help people accomplish their daily duties.'),
                  feedItem(
                      context,
                      'About Us',
                      'Hi,\n'
                          'This application is created by MMO.\n '
                          'MMO is a StartUp Software Company interested in creating a beautiful,'
                          ' simple and useful Applications to help people accomplish their daily duties.'),
                  feedItem(
                      context,
                      'About Us',
                      'Hi,\n'
                          'This application is created by MMO.\n '
                          'MMO is a StartUp Software Company interested in creating a beautiful,'
                          ' simple and useful Applications to help people accomplish their daily duties.'),
                  const SizedBox(
                    height: 25.0,
                  ),
                  //this is the floating action buttons part.
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          heroTag: '1',
                          onPressed: () {},
                          child: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.white,
                          ),
                          backgroundColor:
                              cubit.isDark ? HexColor('#19293a') : Colors.blue,
                        ),
                        FloatingActionButton(
                          heroTag: '2',
                          onPressed: () {},
                          child: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.white,
                          ),
                          backgroundColor:
                              cubit.isDark ? HexColor('#19293a') : Colors.blue,
                        ),
                        FloatingActionButton(
                          heroTag: '3',
                          onPressed: () {},
                          child: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.white,
                          ),
                          backgroundColor:
                              cubit.isDark ? HexColor('#19293a') : Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget feedItem(context, String title, String body) {
  return Column(
    children: [
      Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
      const SizedBox(
        height: 8.0,
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            body,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      const SizedBox(
        height: 18.0,
      ),
    ],
  );
}
//this is the floating action buttons part.
// Padding(
//   padding: const EdgeInsets.symmetric(
//       horizontal: 18.0, vertical: 10.0),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(
//           Icons.facebook_outlined,
//           color: Colors.white,
//         ),
//         backgroundColor:
//             cubit.isDark ? HexColor('#19293a') : Colors.blue,
//       ),
//       FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(
//           Icons.facebook_outlined,
//           color: Colors.white,
//         ),
//         backgroundColor:
//             cubit.isDark ? HexColor('#19293a') : Colors.blue,
//       ),
//       FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(
//           Icons.facebook_outlined,
//           color: Colors.white,
//         ),
//         backgroundColor:
//             cubit.isDark ? HexColor('#19293a') : Colors.blue,
//       ),
//     ],
//   ),
// ),
// const SizedBox(
//   height: 20.0,
// ),
