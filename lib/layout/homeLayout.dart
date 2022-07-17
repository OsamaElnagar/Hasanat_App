import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hasanat/modules/aboutUs.dart';
import 'package:hasanat/modules/settingsScreen.dart';
import 'package:hasanat/shared/Bloc/cubit.dart';
import 'package:hasanat/shared/Bloc/states.dart';
import 'package:hasanat/shared/components/components.dart';

class HomeLayout extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          key: scaffoldKey,
          drawer: Drawer(
            child: ListView(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    Image(
                      image: AssetImage(
                        'assets/R.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    Text(
                      ' ※※ HASANAT APPLICATION ※※ ',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 8.0,
                  ),
                  child: Container(
                    height: 3.0,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                        top: 8.0,
                      ),
                    ),
                    // ListTile(
                    //   title: const Text(
                    //     'Settings',
                    //     style: TextStyle(),
                    //   ),
                    //   onTap: () {
                    //     navigateTo(
                    //       context,
                    //       const SettingsScreen(),
                    //     );
                    //   },
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     left: 120.0,
                    //     right: 120.0,
                    //   ),
                    //   child: Container(
                    //     height: 1.5,
                    //     width: double.infinity,
                    //     color: Colors.blue,
                    //   ),
                    // ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Theme Mode',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: cubit.isDark == true
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        DropdownButton(
                          value: cubit.isDark == false ? 2 : 1,
                          items: const [
                            DropdownMenuItem(
                              child: Text(
                                "Light Mode",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Dark Mode",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              value: 2,
                            )
                          ],
                          onChanged: (value) {
                            if (value == 1) {
                              cubit.isDark = false;
                              cubit.changeAppMode();
                            } else {
                              cubit.isDark = true;
                              cubit.changeAppMode();
                            }
                          },
                        ),
                      ],
                    ),
                    ListTile(
                      title: const Text(
                        'Zero Counter',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        dialogMessage(
                          context: context,
                          title: Row(
                            children: const [
                              Text('Zero Counter '),
                              Icon(Icons.warning),
                            ],
                          ),
                          content:
                              const Text('Are you sure restarting the counter'),
                          actions: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context, 'Cancel');
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                cubit.zeroCounter();
                                Navigator.pop(context, 'Cancel');
                              },
                              child: const Text(
                                'ok',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Citation for morning',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Citation for evening',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Rate App',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'About Us',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        navigateTo(context, const AboutUsLayout());
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 120.0,
                      ),
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Share App',
                        style: TextStyle(),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.only(
                    //     left: 120.0,
                    //     right: 120.0,
                    //     top: 8.0,
                    //     bottom: 8.0,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 10.0,
                      ),
                      child: Container(
                        height: 2.0,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'this application created by Eng/Osama Mohammed Elnagar.'
                            'I hope you find it useful, for More about ',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: cubit.isDark == true
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 20.0,
                              child: MaterialButton(
                                  padding: EdgeInsets.zero,
                                  minWidth: 1,
                                  onPressed: () {},
                                  child: Text(
                                    'Terms&Conditions.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          height: 1.3,
                                          color: Colors.blue,
                                        ),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text(
              'Hasanat',
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
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'total',
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.0,
                                color:
                                    cubit.isDark ? Colors.black : Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${cubit.counter}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 18.0),
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                        ),
                        elevation: 5.0,
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Card(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${cubit.nowCounter}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 18.0),
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                        ),
                        elevation: 5.0,
                      ),
                      Card(
                        child: MaterialButton(
                          onPressed: () {
                            dialogMessage(
                              context: context,
                              title: Row(
                                children: const [
                                  Text('Zero Counter '),
                                  Icon(Icons.warning),
                                ],
                              ),
                              content: const Text(
                                  'Are you sure restarting the counter'),
                              actions: [
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    cubit.nowZeroCounter();
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text(
                                    'ok',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 16.0,
                                color:
                                    cubit.isDark ? Colors.black : Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'now',
                                  style: Theme.of(context).textTheme.bodyText1!,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 8.0,
                ),
                child: Container(
                  height: 4.0,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                flex: 12,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Card(
                        child: MaterialButton(
                          // hoverColor:  HexColor('#19293a'),
                          // highlightColor:  HexColor('#19293a'),
                          // splashColor:  Colors.grey[300],
                          onPressed: () {
                            cubit.changeCounter();
                          },
                          child: Center(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  cubit.prays[cubit.currentIndex],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w800),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              elevation: 5.0,
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                        ),
                        elevation: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 9.0,
              ),
            ],
          ),
          floatingActionButton: Container(
            width: 70.0,
            height: 70.0,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: FloatingActionButton(
              // shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(15.0))),
              isExtended: true,
              child: Icon(
                Icons.add,
                color: cubit.isDark ? Colors.white : Colors.white,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/R.jpeg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: MaterialButton(
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Text(AppCubit.get(context).prays[index]),
                                ),
                              ),
                              onPressed: () async {
                                cubit.sayIndex(index);
                                Navigator.pop(context);
                              },
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              color: Colors.grey,
                            ),
                          );
                        },
                        itemCount: AppCubit.get(context).prays.length,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
