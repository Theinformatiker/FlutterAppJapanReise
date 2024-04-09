import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String mytext;
  final void Function()? event;
  const myButton({
    super.key,
    required this.mytext,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: event,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 179, 156),
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mytext,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
