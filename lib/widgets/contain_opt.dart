import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer(this.headliner, this.childswitch, {super.key});

  final String headliner;
  final Widget childswitch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(headliner),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: childswitch,
          ),
        ],
      ),
    );
  }
}
