import 'package:flutter_starter_kit/app/imports.dart';

class CustomBottomNavBar extends StatefulWidget {
  final List<String> icons;
  final Function(int) onTap;
  final int initialIndex;

  const CustomBottomNavBar({
    super.key,
    required this.icons,
    required this.onTap,
    this.initialIndex = 0,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onTap(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: AppPadding.horizontalPadding,
      ),
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        color: AppColors.primaryColor.withOpacity(0.8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          growable: false,
          widget.icons.length,
          (index) => _buildNavItem(widget.icons[index], index),
        ).insertBetween(
          Padding(
            padding: EdgeInsets.symmetric(vertical: 22.h),
            child: const VerticalDivider(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(icon, int index) {
    final bool isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: SizedBox(
          height: 70.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgIcon(props: SvgIconProps(svgIcon: icon, height: 35.h)),
              if (isSelected)
                const Positioned(
                  bottom: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 3,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
