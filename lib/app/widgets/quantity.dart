import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class QuantityWidget extends StatelessWidget {
  bool isKg;

  QuantityWidget({this.isKg = false});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuantityController>(
      init: QuantityController(isKg: isKg),
      builder: (controller) => Column(
        children: [
          _QuantityWidget(),
        ],
      ),
    );
  }
}

class _QuantityWidget extends StatelessWidget {
  var controller = Get.find<QuantityController>();

  @override
  Widget build(BuildContext context) {
    var quantity = controller.quantity;

    return Row(
      children: [
        ElevatedButton(
            onPressed: () => controller.changeQuantity(quantity - 1),
            child: Icon(Icons.remove)),
        Text('$quantity'),
        ElevatedButton(
            onPressed: () => controller.changeQuantity(quantity + 1),
            child: Icon(Icons.add)),
      ],
    );
  }
}

class QuantityController extends GetxController {
  bool isKg;

  QuantityController({required this.isKg});

  num quantity = 1;

  void changeQuantity(num value) {
    quantity = value;

    update();
  }
}
