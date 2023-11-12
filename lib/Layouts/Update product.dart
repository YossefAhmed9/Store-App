import 'package:flutter/material.dart';

import '../components/components.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController ProductNameController = TextEditingController();
    TextEditingController ProductPriceController = TextEditingController();
    TextEditingController ProductPhotoController = TextEditingController();
    TextEditingController ProductDescController = TextEditingController();
    var updateName = GlobalKey<FormState>();
    var updatePrice = GlobalKey<FormState>();
    var updatephoto = GlobalKey<FormState>();
    var updateDesc = GlobalKey<FormState>();
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        key: scaffoldKey,
        title: Text(
          'Update product',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              defaultTextFormField(
                  updateName, TextInputType.text, ProductNameController,
                  //submit
                  (value) {
                print(value);
              },
                  //change
                  (value) {
                print(value);
              },
                  //tap
                  () {},
                  'Enter product name',
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  (value) => null),
              defaultTextFormField(
                  updatePrice, TextInputType.text, ProductPriceController,
                  //submit
                  (value) {
                print(value);
              },
                  //change
                  (value) {
                print(value);
              },
                  //tap
                  () {},
                  'Enter product price',
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  (value) => null),
              defaultTextFormField(
                  updatephoto, TextInputType.text, ProductPhotoController,
                  //submit
                  (value) {
                print(value);
              },
                  //change
                  (value) {
                print(value);
              },
                  //tap
                  () {},
                  'Enter product image "url" ',
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  (value) => null),
              defaultTextFormField(
                  updateDesc, TextInputType.text, ProductDescController,
                  //submit
                  (value) {
                print(value);
              },
                  //change
                  (value) {
                print(value);
              },
                  //tap
                  () {},
                  'Enter product Description',
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  (value) => null),
            ],
          ),
        ),
      ),
    );
  }
}
