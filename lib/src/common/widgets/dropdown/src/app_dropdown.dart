import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class AppDropdown<T> extends StatelessWidget {
  final GlobalKey<DropdownSearchState<T>>? dropDownKey;
  final T? selectedItem;
  final void Function(T?)? onChanged;
  final List<T> Function(String filter, dynamic infiniteScrollProps) items;
  final String labelText;
  final String Function(T pet) itemAsString;
  final String? Function(T?)? validator;

  const AppDropdown({
    super.key,
    this.dropDownKey,
    this.selectedItem,
    this.onChanged,
    required this.items,
    required this.labelText,
    required this.itemAsString,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final icon = SizedBox(
      height: 25.w,
      width: 25.w,
      child: Center(
        child: SvgIcon(
          props: SvgIconProps(svgIcon: AppIcons.arrowSvg, height: 25.w, width: 25.w, color: AppColors.primaryColor),
        ),
      ),
    );
    return DropdownSearch<T>(
        key: dropDownKey,
        selectedItem: selectedItem,
        items: items,
        itemAsString: (item) => itemAsString(item),
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            labelText: labelText,
            border: const OutlineInputBorder(),
          ),
        ),
        popupProps: PopupProps.menu(
          fit: FlexFit.loose,
          constraints: const BoxConstraints(),
        ),
        compareFn: (item1, item2) => item1.hashCode == item2.hashCode,
        validator: validator,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        suffixProps: DropdownSuffixProps(
          dropdownButtonProps: DropdownButtonProps(
            iconOpened: icon,
            iconClosed: icon,
          ),
        ));
  }
}
