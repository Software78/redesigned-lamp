import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:third_iteration/widgets/delivery_item.dart';

import '../../widgets/custom_text.dart';

class ContractDetails extends StatelessWidget {
  const ContractDetails({super.key});

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
                        text: "Delivery History",
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
                right: 0,
                child: SvgPicture.asset(
                  'assets/illustrations/container_bg.svg',
                  width: 375.w,
                ),
              ),
            ]),
            SizedBox(
              height: 28.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "You have ",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff54565B),
                ),
                CustomText(
                  text: "6",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffE1261C),
                ),
                CustomText(
                  text: " trucks delivered today",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff54565B),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => const DeliveryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 17.h,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color(0xffF2F2F2),
          padding: REdgeInsets.symmetric(horizontal: 16.67.r, vertical: 12.r),
          child: MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100), right: Radius.circular(100)),
            ),
            onPressed: () {},
            minWidth: 341.67.w,
            height: 56.h,
            color: const Color(0xffE1261C),
            child: CustomText(
              text: "Close",
              color: const Color(0xffF2F2F2),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}