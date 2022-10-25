import 'package:flutter/material.dart';
import '../../Resources/color_manager.dart';

class DetailsPage extends StatelessWidget {
  final String? name;
  final Color? color;
  const DetailsPage({required this.name, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call Details"),
        backgroundColor: color,
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              color: Colors.grey[100],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Container(
              color: color,
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: SizedBox(
              width: 250,
              height: 150,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(name![0],
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w400,
                                    color: ColorManager.white)))),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: color,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text("$name",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.white)))),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text("Custom",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ColorManager.white)))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 150,
              left: 20,
              child: Container(
                width: 430,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.list_alt,
                          color: Colors.green,
                        ),
                        Text("View")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.block,
                          color: Colors.green,
                        ),
                        Text("Block")
                      ],
                    )),
                  ],
                ),
              )),
          Positioned(
              top: 260,
              left: 20,
              child: Container(
                width: 430,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.list_alt,
                          color: Colors.green,
                        ),
                        Text("View")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.block,
                          color: Colors.green,
                        ),
                        Text("Block")
                      ],
                    )),
                  ],
                ),
              )),
          Positioned(
              top: 370,
              left: 20,
              child: Container(
                width: 430,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.list_alt,
                          color: Colors.green,
                        ),
                        Text("View")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.block,
                          color: Colors.green,
                        ),
                        Text("Block")
                      ],
                    )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
