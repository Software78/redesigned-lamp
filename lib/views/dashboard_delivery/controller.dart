

import 'package:flutter/material.dart';

import '../../mvc/mvc.dart';


part 'view.dart';

class DashboardDeliveryScreen extends StatefulWidget {
  const DashboardDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DashboardDeliveryScreen> createState() => DashboardDeliveryController();
}

class DashboardDeliveryController extends State<DashboardDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return DashboardDeliveryView(this);
  }
}
