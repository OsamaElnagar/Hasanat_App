import 'package:flutter/material.dart';


class AddSayScreen extends StatelessWidget {
  final Function addSayCallBack;
  String? taskTitle;
  final textController = TextEditingController();

  AddSayScreen({Key? key, required this.addSayCallBack, this.taskTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 5.0),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'New Say',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
            ),
            const SizedBox(height: 9.0),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: TextField(
                textDirection: TextDirection.ltr,
                cursorColor: Colors.lightBlueAccent,
                textAlign: TextAlign.center,
                controller: textController,
                onChanged: (value) {
                  taskTitle = value;
                },
                onSubmitted: (value) {
                  taskTitle = value;
                },
              ),
            ),
            const SizedBox(height: 9.0),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                addSayCallBack(taskTitle);
              },
              child: const Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
