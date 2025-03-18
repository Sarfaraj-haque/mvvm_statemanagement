import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/screens/fav_screen.dart';
import 'package:mvvm_statemanagement/services/init_get.dart';
import 'package:mvvm_statemanagement/services/navigation_service.dart';
import 'package:mvvm_statemanagement/widgets/movies_widget.dart';

class MoviesScreens extends StatelessWidget {
  const MoviesScreens({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
        actions: [
          IconButton(
            icon: const Icon(
              AppIcons.favRounded,
              color: Colors.red,
            ),
            onPressed: () {
              // locator<NavigationService>().showSnackBar();
              locator<NavigationService>().navigate(const FavScreen());
            },
          ),
          const IconButton(
            icon: Icon(
              AppIcons.darkMode,
              color: Colors.red,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const
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
