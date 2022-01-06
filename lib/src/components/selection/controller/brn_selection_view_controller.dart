import 'package:bruno/src/utils/brn_event_bus.dart';
import 'package:flutter/material.dart';

class BrnSelectionListViewController extends ChangeNotifier {
  late double listViewTop; //下拉筛选列表顶部坐标
  late double screenHeight;
  late int menuIndex;

  bool isShow = false; //是否显示下拉筛选列表

  OverlayEntry? entry; //显示下拉筛选列表的图层

  void show(int index) {
    isShow = true;
    menuIndex = index;
    notifyListeners();
  }

  void hide() {
    isShow = false;
    notifyListeners();
  }
}

class BrnSelectionViewController {
  void closeSelectionView() {
    EventBus.instance.fire(CloseSelectionViewEvent());
  }

  void refreshSelectionTitle() {
    EventBus.instance.fire(RefreshMenuTitleEvent());
  }
}

abstract class BaseSelectionEvent {}

class RefreshMenuTitleEvent extends BaseSelectionEvent {}

class CloseSelectionViewEvent extends BaseSelectionEvent {}
