import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_iteration/widgets/custom_text.dart';

class CommodityCodes extends StatelessWidget {
  const CommodityCodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 215.h,
          padding: REdgeInsets.all(16.r),
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Commodity Codes',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff54565B),
              ),
              SizedBox(height: 13.h),
              const Divider(),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'MAZ - Maize',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'SSC - Sesame Cleaned Seed',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'SG - Sorghum',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'SB - Soybean',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 231.h,
          right: 10.w,
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/icons/close.svg'),
          ),
        ),
      ],
    );
  }
}
