import 'package:flutter/material.dart';

class AppCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const AppCheckbox({super.key, required this.value, required this.onChanged});

  @override
  _AppCheckboxState createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: widget.value ? const Color(0xFF632B9A) : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color(0xFF632B9A),
            width: 1.5,
          ),
        ),
        child: widget.value
            ? const Icon(
                Icons.check,
                size: 12,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
