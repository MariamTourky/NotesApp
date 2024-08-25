import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/CustomSearchIcon.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",
        style: TextStyle(
          fontSize: 12.sp,
        ),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
