import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ESimController extends GetxController {
  RxString name = 'Dean\'s Sim'.obs;
  TextEditingController nameController = TextEditingController();
  void updateUserName(BuildContext context) {
    nameController.text = name.value;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const ImageIcon(
                  AssetImage('assets/SIM Cards.png'),
                  color: Color(0xFFe10a0a),
                ),
                title: const Text(
                  'Rename eSIM',
                  style: TextStyle(
                      color: Color(0xff131C35),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                trailing: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'eSIM Name',
                style: TextStyle(
                    color: Color(0xff131C35),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 11),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                style: const TextStyle(
                    color: Color(0xff131C35),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500),
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                  filled: false,
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 53, 27, 27)),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  name(nameController.text);
                  Navigator.of(context).pop();
                },
                child: Container(
                    height: 50,
                    width: Get.width * .9,
                    decoration: BoxDecoration(
                        color: const Color(0xFFe10a0a),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
              const SizedBox(
                height: 8.0,
              )
            ],
          ),
        );
      },
    );
  }
}
