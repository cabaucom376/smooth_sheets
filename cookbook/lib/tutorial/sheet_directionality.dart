import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

void main() {
  runApp(const _SheetDirectionalityExample());
}

class _SheetDirectionalityExample extends StatelessWidget {
  const _SheetDirectionalityExample();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _ExampleHome(),
    );
  }
}

class _ExampleHome extends StatelessWidget {
  const _ExampleHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheet Directionality Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildDirectionButton(
              context,
              icon: Icons.arrow_upward_rounded,
              label: 'From Bottom',
              axisDirection: SheetAxisDirection.fromBottom,
            ),
            _buildDirectionButton(
              context,
              icon: Icons.arrow_downward_rounded,
              label: 'From Top',
              axisDirection: SheetAxisDirection.fromTop,
            ),
            _buildDirectionButton(
              context,
              icon: Icons.arrow_forward_rounded,
              label: 'From Left',
              axisDirection: SheetAxisDirection.fromLeft,
            ),
            _buildDirectionButton(
              context,
              icon: Icons.arrow_back_rounded,
              label: 'From Right',
              axisDirection: SheetAxisDirection.fromRight,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDirectionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required SheetAxisDirection axisDirection,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        onPressed: () => _showModalSheet(context, axisDirection),
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  void _showModalSheet(BuildContext context, SheetAxisDirection axisDirection) {
    // Use ModalSheetRoute to show a modal sheet with imperative Navigator API.
    // It works with any *Sheet provided by this package!
    final modalRoute = ModalSheetRoute(
      // Enable the swipe-to-dismiss behavior.
      swipeDismissible: true,
      axisDirection: axisDirection,
      builder: (context) => const _ExampleSheet(),
    );

    Navigator.push(context, modalRoute);
  }
}

class _ExampleSheet extends StatelessWidget {
  const _ExampleSheet();

  @override
  Widget build(BuildContext context) {
    return DraggableSheet(
      child: Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const SizedBox(
          height: 700,
          width: double.infinity,
        ),
      ),
    );
  }
}
