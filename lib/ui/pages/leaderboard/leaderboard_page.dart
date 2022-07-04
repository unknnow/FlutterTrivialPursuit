import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = List<String>.generate(100, (index) => 'ABC');

    return Scrollbar(
      interactive: true,
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {

            return ListTile(
              leading: Text((index+1).toString()),
              title: Text(list[index]),
              trailing: index < 3 ? SvgPicture.asset("assets/icons/medal.svg", color: _getTrailingColor(index)): null,
              // tileColor: index % 2 == 0 ? Colors.grey.withOpacity(0.25) : null,
            );
          },
          itemCount: list.length
      ),
    );
  }

  Color? _getTrailingColor(int index) {
    if (index == 0) {
      return Colors.yellow;
    } else if (index == 1) {
      return Colors.grey;
    } else if (index == 2) {
      return Colors.orangeAccent;
    }

    return null;
  }
}