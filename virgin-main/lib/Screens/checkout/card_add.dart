import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardAddScreen extends StatefulWidget {
  const CardAddScreen({super.key});

  @override
  State<CardAddScreen> createState() => _CardAddScreenState();
}

class _CardAddScreenState extends State<CardAddScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFe10a0a),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(22),
          ),
        ),
        title: const Text(
          "USA Package",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
        // actions: [
        //   Icon(Icons.);
        // ],
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Card number",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                      width: Get.width * .4,
                      margin: const EdgeInsets.only(left: 20),
                      child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Expiry number",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                  Container(
                      width: Get.width * .4,
                      margin: const EdgeInsets.only(left: 40),
                      child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Cvv",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: Get.width * .4,
                    margin: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * .4,
                    margin: const EdgeInsets.only(left: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Checkbox(
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ),
              const Text(
                "Save card for future use.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.offAllNamed('/home');
            },
            child: Container(
                height: 50,
                width: Get.width * .9,
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: const Color(0xFFe10a0a),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Add Card",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
