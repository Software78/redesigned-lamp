import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_iteration/widgets/custom_text.dart';

import '../../mvc/mvc.dart';

part 'view.dart';

class DashboardDeliveryScreen extends StatefulWidget {
  const DashboardDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DashboardDeliveryScreen> createState() => DashboardDeliveryController();
}

class DashboardDeliveryController extends State<DashboardDeliveryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    sizeAnimation = Tween<double>(begin: 118.h, end: 238.h).animate(controller);
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  playContainerAnimation() {
    controller.value == 0.0 ? controller.forward() : controller.reverse();
  }

  returnToPreviousScreen() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DashboardDeliveryView(this);
  }
}
