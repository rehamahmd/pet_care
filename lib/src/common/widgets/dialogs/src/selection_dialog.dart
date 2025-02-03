import 'package:flutter/material.dart';

class SelectionDialog<T> extends StatelessWidget {
  final List<T> items;
  final String title;
  final Function(T) onItemSelected;
  final String Function(T) itemTextDisplay;
  const SelectionDialog({
    super.key,
    required this.items,
    required this.title,
    required this.onItemSelected,
    required this.itemTextDisplay,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(itemTextDisplay(items[index]).toString()),
              onTap: () {
                onItemSelected(items[index]);
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}

void showSelectionDialog<T>({
  required BuildContext context,
  required List<T> items,
  required String title,
  required Function(T) onItemSelected,
  required String Function(T) itemTextDisplay,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SelectionDialog<T>(
        items: items,
        title: title,
        onItemSelected: onItemSelected,
        itemTextDisplay: itemTextDisplay,
      );
    },
  );
}
