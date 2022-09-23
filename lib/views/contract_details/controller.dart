import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../mvc/mvc.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/delivery_item.dart';


part 'view.dart';

class ContractDetailsScreen extends StatefulWidget {
  const ContractDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ContractDetailsScreen> createState() => ContractDetailsController();
}

class ContractDetailsController extends State<ContractDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ContractDetailsView(this);
  }
}
