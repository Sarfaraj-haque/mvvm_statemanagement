import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/widgets/cached_image.dart';
import 'package:mvvm_statemanagement/widgets/fav_btn.dart';
import 'package:mvvm_statemanagement/widgets/geners_list.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: const CachedImageWidget(imgUrl: MyAppConst.roadImg),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.4),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Movie title",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w600),
                              ),
                              const Row(
                                children: [
                                  Icon(AppIcons.ratingIcon,
                                      color: Colors.amber, size: 20),
                                  Text("9/10"),
                                  Spacer(),
                                  Text(
                                    "Release Date",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  )
                                ],
                              ),
                              const GeneresListWidget(),
                              const SizedBox(height: 15),
                              Text(
                                "Overview" * 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: FavBtn(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
