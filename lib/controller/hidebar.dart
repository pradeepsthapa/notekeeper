import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HideNavbar extends ChangeNotifier{
  final ScrollController controller = ScrollController();
  ValueNotifier<bool> visible = ValueNotifier<bool>(true);
  HideNavbar() {
    visible.value = true;
    controller.addListener(
          () {
        if (controller.position.userScrollDirection == ScrollDirection.reverse) {
          if (visible.value) {
            visible.value = false;
          }
        }

        if (controller.position.userScrollDirection == ScrollDirection.forward) {
          if (!visible.value) {
            visible.value = true;
          }
        }
      },
    );
  }
}

final hideAppBar = ChangeNotifierProvider((ref)=>HideNavbar());