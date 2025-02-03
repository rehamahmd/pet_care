import 'package:flutter_starter_kit/app/imports.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 50.w,
            height: 50.w,
            child: CircularProgressIndicator(
              color: const Color(0xffBABABA),
              strokeWidth: 4.w,
            ),
          ),
          CircularProgressIndicator() // TODO
        ],
      ),
    );
  }
}
