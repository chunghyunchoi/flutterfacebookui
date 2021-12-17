import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/widgets/circle_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          systemOverlayStyle:
              null, //brightness는 이용 중지되었고 null값을 설정할시 배경색에 따라 자동으로 테마적용
          backgroundColor: Colors.white,
          title: Text('facebook',
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2)),
          centerTitle: false, // 기본은 센터이기 때문에 false지정
          floating: true, // 앱에서 아래로 스크롤다운했을 시 위로 사라지는것
          actions: [
            CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () => print('Search')),
            CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () => print('Messenger')),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 100.0,
            color: Colors.red,
          ),
        )
      ],
    ));
  }
}
