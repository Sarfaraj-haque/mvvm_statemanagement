import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/widgets/movies_widget.dart';

class MoviesScreens extends StatelessWidget {
  const MoviesScreens({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
        actions: const [
          IconButton(
            icon: Icon(
              AppIcons.favRounded,
              color: Colors.red,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              AppIcons.darkMode,
              color: Colors.red,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>const 
            // child: CachedImageWidget(
            //   imgUrl: MyAppConst.roadImg,
            //   boxFit: BoxFit.cover,
            // ),
            MoviesWidget(),
        itemCount: 5,
      ),
    );
  }
}
