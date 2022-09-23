import 'package:flutter/material.dart';

import 'view.dart';

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
