import 'package:flutter/material.dart';

import '../components/components.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController ProductNameController = TextEditingController();
    var updateName = GlobalKey<FormState>();
    var updatePrice = GlobalKey<FormState>();
    var updatephoto = GlobalKey<FormState>();
    var updateDesc = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            defaultTextFormField(
                updateName,
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product name',
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                updatePrice,
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product price',
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                updatephoto,
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product image "url" ',
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                updateDesc,
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product Description',
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
          ],
        ),
      ),
    );
  }
}
