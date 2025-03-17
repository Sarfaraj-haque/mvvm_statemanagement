import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';

class FavBtn extends StatelessWidget {
  const FavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        AppIcons.favOutlined,
        // color: Colors.red,
        size: 20,
      ),
    );
  }
}
