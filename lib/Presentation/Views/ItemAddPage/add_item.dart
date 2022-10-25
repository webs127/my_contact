import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/item.dart';
import 'package:todo/Models/item_book.dart';
import 'package:todo/Presentation/Resources/color_manager.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final name = TextEditingController();
  final phoneNum = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ContactBook>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.splash,
        title: const Text("Add Contact", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: "Name"),
                controller: name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: "Phone Number"),
                controller: phoneNum,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  data.addContact(
                      Contact(itemName: name.text, phoneNumber: phoneNum.text));
                  Navigator.pop(context);
                }
              },
              fillColor: ColorManager.splash,
              child: Text(
                "Add Contact",
                style: TextStyle(color: ColorManager.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
