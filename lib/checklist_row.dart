import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChecklistRow extends StatelessWidget {
  final void Function()? onPressChangeColor;
  final RxBool? checkCorrigir;
  const ChecklistRow({
    super.key,
    this.onPressChangeColor,
    this.checkCorrigir,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Obx(
              () => Container(
                width: 40,
                decoration: BoxDecoration(
                  color: checkCorrigir!.value ? Colors.green : Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: IconButton(
                  onPressed: onPressChangeColor,
                  icon: const Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
