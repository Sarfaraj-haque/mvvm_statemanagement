import 'package:flutter/material.dart';

import '../constants/my_app_icons.dart';
import '../widgets/movies_widget.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Movies'),
        actions: const [
          IconButton(
            icon: Icon(
              AppIcons.delete,
              color: Colors.red,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => 
            // child: CachedImageWidget(
            //   imgUrl: MyAppConst.roadImg,
            //   boxFit: BoxFit.cover,
            // ),
            const MoviesWidget(),
        itemCount: 5,
      ),
    );
    
  }
}
