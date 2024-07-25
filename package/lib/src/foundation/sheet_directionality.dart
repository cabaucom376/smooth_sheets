import 'package:flutter/widgets.dart';

class SheetDirectionality extends StatefulWidget {
  const SheetDirectionality({
    super.key,
    required this.axisDirection,
    required this.child,
  });

  final SheetAxisDirection? axisDirection;
  final Widget child;

  @override
  State<SheetDirectionality> createState() => _SheetDirectionalityState();
}

class _SheetDirectionalityState extends State<SheetDirectionality> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

enum SheetAxisDirection {
  fromBottom,
  fromTop,
  fromLeft,
  fromRight,
  ;
}
