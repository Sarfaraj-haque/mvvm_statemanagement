import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app.dart';

class GeneresListWidget extends StatelessWidget {
  const GeneresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
          MyAppConst.genres.length,
          (index) => chipWidget(
              context: context, genreName: MyAppConst.genres[index])),
    );
  }

  Widget chipWidget(
      {required BuildContext context, required String genreName}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.surface.withOpacity(0.3),
            border: Border.all(
              color: Theme.of(context).colorScheme.onSurface,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text(
            genreName,
            style: (TextStyle(
                color: Theme.of(context).colorScheme.onSurface, fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
