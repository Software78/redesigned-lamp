

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_iteration/widgets/custom_text.dart';

import '../../models/transaction_model.dart';
import '../../mvc/mvc.dart';
import '../../widgets/dashboard_modal.dart';
import '../../widgets/transaction_item.dart';




part 'view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => DashboardController();
}

class DashboardController extends State<DashboardScreen> {
  
  final List<Transaction> transaction = [
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DashboardView(this);
  }
}
