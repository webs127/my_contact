import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/item_book.dart';
import 'package:todo/Presentation/Resources/color_manager.dart';
import 'package:todo/Presentation/Views/details_page/details.dart';
import '../Presentation/Resources/routes_manager.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final key = GlobalKey<FormState>();
  bool changeColor = true;
  TextEditingController itemData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //final contact = Provider.of<ContactBook>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:
              (changeColor) ? ColorManager.white : ColorManager.black,
          elevation: 0,
          title: Text(
            "Contacts",
            style: TextStyle(
              color: (changeColor) ? ColorManager.black : ColorManager.white,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    changeColor = !changeColor;
                  });
                },
                icon: Icon(
                  (changeColor) ? Icons.lightbulb_outline : Icons.lightbulb,
                  color:
                      (changeColor) ? ColorManager.black : ColorManager.white,
                ))
          ],
        ),
        backgroundColor:
            (changeColor) ? ColorManager.white : ColorManager.black,
        body: Consumer<ContactBook>(
          builder: (_, contact, __) {
            return (contact.isContactEmpty()) ? Center(child: Text("No Contacts", style: TextStyle(
              color:
              (changeColor) ? ColorManager.black : ColorManager.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),): ListView.builder(
                itemCount: contact.length,
                itemBuilder: (context, i) {
                  var data = contact.getCurrentContact(i);

                  return Dismissible(
                    key: Key("${data?.uid}"),
                    onDismissed: (direction) {
                      contact.removeContact(data!);
                    },
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                          backgroundColor: data?.color,
                          child: Text("${data?.itemName[0]}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.black))),
                      title: Text(
                        "${data?.itemName}",
                        style: TextStyle(
                          color: (changeColor)
                              ? ColorManager.black
                              : ColorManager.white,
                        ),
                      ),
                      subtitle: Text(
                        "${data?.phoneNumber}",
                        style: TextStyle(
                          color: (changeColor)
                              ? ColorManager.black
                              : ColorManager.white,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailsPage(
                                        name: data?.itemName,
                                    color: data?.color,
                                      )));
                        },
                        icon: Icon(
                          Icons.info_outline,
                          color: (changeColor)
                              ? ColorManager.black
                              : ColorManager.white,
                        ),
                      ),
                    ),
                  );
                });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: null,
              backgroundColor:
              (changeColor) ? ColorManager.black : ColorManager.white,
              onPressed: () {
                Navigator.pushNamed(context, RoutesManager.addItemPage);
              },
              child: Icon(
                Icons.add,
                color: (changeColor) ? ColorManager.white : ColorManager.black,
              ),
            ),
            const SizedBox(width: 10,),
            FloatingActionButton(
              heroTag: null,
              backgroundColor:
              (changeColor) ? ColorManager.black : ColorManager.white,
              onPressed: () {
                //Navigator.pushNamed(context, RoutesManager.addItemPage);
              },
              child: Icon(
                Icons.search,
                color: (changeColor) ? ColorManager.white : ColorManager.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
