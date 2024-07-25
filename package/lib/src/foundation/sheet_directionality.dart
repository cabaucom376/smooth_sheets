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
  const factory SheetAxisDirection.fromBottom() = BottomSheetAxisDirection;

  const factory SheetAxisDirection.fromTop() = TopSheetAxisDirection;

  const factory SheetAxisDirection.fromLeft() = LeftSheetAxisDirection;

  const factory SheetAxisDirection.fromRight() = RightSheetAxisDirection;
}

class BottomSheetAxisDirection implements SheetAxisDirection {
  const BottomSheetAxisDirection();
}

class TopSheetAxisDirection implements SheetAxisDirection {
  const TopSheetAxisDirection();
}

class LeftSheetAxisDirection implements SheetAxisDirection {
  const LeftSheetAxisDirection();
}

class RightSheetAxisDirection implements SheetAxisDirection {
  const RightSheetAxisDirection();
}
