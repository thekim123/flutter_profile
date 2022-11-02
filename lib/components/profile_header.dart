import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("thekim12",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            )),
        Text(
          "프로그래머",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "아릉하세연?",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
