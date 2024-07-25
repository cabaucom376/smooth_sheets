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

abstract class SheetAxisDirection {
  const SheetAxisDirection();

  const factory SheetAxisDirection.fromBottom() = BottomSheetAxisDirection;

  const factory SheetAxisDirection.fromTop() = TopSheetAxisDirection;

  const factory SheetAxisDirection.fromLeft() = LeftSheetAxisDirection;

  const factory SheetAxisDirection.fromRight() = RightSheetAxisDirection;
}

class BottomSheetAxisDirection extends SheetAxisDirection {
  const BottomSheetAxisDirection();
}

class TopSheetAxisDirection extends SheetAxisDirection {
  const TopSheetAxisDirection();
}

class LeftSheetAxisDirection extends SheetAxisDirection {
  const LeftSheetAxisDirection();
}

class RightSheetAxisDirection extends SheetAxisDirection {
  const RightSheetAxisDirection();
}
