import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                    width: 300.0,
                    height: 190.0,
                    child: Image.asset("assets/images/wall1.jpg")),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                    width: 300.0,
                    height: 190.0,
                    child: Image.asset("assets/images/wall1.jpg")),
              ],
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.refresh_outlined),
              onPressed: () {},
            ),
            Text(
              'History',
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.video_library),
              onPressed: () {},
            ),
            Text(
              'Your videos',
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.download),
              onPressed: () {},
            ),
            Text(
              'Downloads',
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.check_circle_outline))
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.movie_creation),
              onPressed: () {},
            ),
            Text(
              'Your movies',
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.watch_later_outlined),
              onPressed: () {},
            ),
            Column(
              children: [
                Text(
                  'Watch later',
                ),
                Text(
                  '8 mintues ago',
                  style: TextStyle(fontSize: 11.0),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
