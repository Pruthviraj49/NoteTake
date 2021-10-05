import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/model/note.dart';

final _lightColors = [
  Color.fromARGB(255, 255, 223, 117),
  Color.fromARGB(255, 209, 255, 156),
  Color.fromARGB(255, 131, 213, 251),
  Color.fromARGB(255, 252, 201, 123),
  Color.fromARGB(255, 255, 144, 181),
  Color.fromARGB(255, 181, 255, 238),
  Color.fromARGB(255, 173, 255, 172),
];

class NoteCardWidget extends StatelessWidget {
  NoteCardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    /// Pick colors from the accent colors based on index
    final color = _lightColors[index % _lightColors.length];
    final time = DateFormat.yMMMd().format(note.createdTime);
    final minHeight = getMinHeight(index);
    List<String> ans = note.description.split(' ');

    return Card(
      color: color,
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            SizedBox(height: 4),
            Text(
              note.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              ans.first,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // To return different height for different widgets
  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 120;
      case 2:
        return 120;
      case 3:
        return 100;
      default:
        return 100;
    }
  }
}
