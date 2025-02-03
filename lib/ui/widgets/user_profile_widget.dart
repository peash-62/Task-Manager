import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
      tileColor: Colors.green,
      leading: CircleAvatar(
        child: Image.asset('assets/images/profileimage.png'),),
      //leading: Image.asset('assets/images/ProfilePic.png'),
      title: Text('William Thomas'),
      subtitle: Text('williamthomas@gmail.com'),
    );
  }
}