import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';

class HomeBodyWeb extends StatelessWidget {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      isAlwaysShown: true,
      showTrackOnHover: true,
      child: WebLayout(
        widget: Container(
          margin: const EdgeInsets.symmetric(vertical: 30.0),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(right: 30.0),
                width: 550,
                child: ListView.builder(
                  controller: controller,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        index == 0
                            ? Container(
                                margin: const EdgeInsets.only(bottom: 30.0),
                                padding:
                                    const EdgeInsets.only(top: kDefaultPadding),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[300]),
                                ),
                                child: HomeStories())
                            : Container(),
                        IgPost(),
                      ],
                    );
                  },
                ),
              ),
              HomeSideCard(),
            ],
          ),
        ),
      ),
    );
  }
}
