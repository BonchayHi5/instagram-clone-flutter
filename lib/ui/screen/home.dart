import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';
import 'package:instagram_clone/ui/widget/web/home_appbar_web.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isWeb = Responsive.isDesktop(context);
    return Scaffold(
      appBar: _isWeb ? HomeAppBarWeb() : HomeAppBar.getItem(),
      bottomNavigationBar: !_isWeb ? HomeBottom() : null,
      body: Responsive(
        mobile: HomeBody(),
        desktop: HomeBodyWeb(),
      ),
    );
  }
}
