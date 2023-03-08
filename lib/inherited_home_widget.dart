import 'package:flutter/cupertino.dart';

class InheritedHomeWidget extends InheritedWidget {
  const InheritedHomeWidget({required this.child, required this.title, Key? key}) : super(key: key, child: child);

  final Widget child;
  final String title;

  static InheritedHomeWidget of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedHomeWidget>() as InheritedHomeWidget);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
