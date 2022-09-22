

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_iteration/widgets/custom_text.dart';

import '../../models/transaction_model.dart';
import '../../mvc/mvc.dart';
import '../../widgets/transaction_item.dart';




part 'view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
