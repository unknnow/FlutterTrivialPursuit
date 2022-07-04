import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = List<String>.generate(100, (index) => 'ABC');

    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          Color colorMedal = Colors.yellow;
          if (index == 1) {
            colorMedal = Colors.grey;
          } else if (index == 2) {
            colorMedal = Colors.orangeAccent;
          }

          return ListTile(
            leading: Text((index+1).toString()),
            title: Text(list[index]),
            trailing: index < 3 ? SvgPicture.asset("assets/icons/medal.svg", color: colorMedal): null,
            tileColor: index % 2 == 0 ? Colors.grey.withOpacity(0.25) : null,
          );
        },
        // separatorBuilder: (BuildContext context, int index) {
        //   return const Divider(color: Colors.grey);
        // },
        itemCount: list.length
    );
  }
}