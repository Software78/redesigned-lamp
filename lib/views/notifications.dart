import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:third_iteration/widgets/custom_text.dart';

import '../widgets/notification.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: REdgeInsets.only(left: 16.r),
                color: const Color(0xff54565B),
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      height: 48.h,
                      minWidth: 48.h,
                      color: const Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.25.r),
                      ),
                      child: SvgPicture.asset(
                          "assets/illustrations/arrow-right.svg"),
                    ),
                    SizedBox(width: 16.w),
                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        text: "Notifications",
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Positioned(
                top: -30,
                left: 268.w,
                child: SvgPicture.asset("assets/illustrations/afex_bg.svg"),
              )
            ]),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.r),
                child: ListView.separated(
                    itemBuilder: (BuildContext context, index) =>
                        const NotificationBox(),
                    separatorBuilder: (BuildContext context, index) => SizedBox(
                          height: 16.h,
                        ),
                    itemCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
