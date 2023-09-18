import 'package:flutter/material.dart';

class BottomField extends StatefulWidget {
  const BottomField({super.key});

  @override
  State<BottomField> createState() => _BottomFieldState();
}

class _BottomFieldState extends State<BottomField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      height: 65,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
                SizedBox(width: 10,),
                Container(
                  width: 160,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 19
                    ),
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.attachment_outlined,
                  color: Colors.black38,
                ),
                SizedBox(width: 15,),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.mic,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
