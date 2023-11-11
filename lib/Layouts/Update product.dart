import 'package:flutter/material.dart';
import 'package:store_app/components/new%20card.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController ProductNameController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            defaultTextFormField(
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product name',
                OutlineInputBorder(),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product name',
                OutlineInputBorder(),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product name',
                OutlineInputBorder(),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
            defaultTextFormField(
                TextInputType.text,
                ProductNameController,
                //submit
                (p0) => null,
                //change
                (p0) => null,
                //tap
                () {},
                'Enter product name',
                OutlineInputBorder(),
                Icon(Icons.ac_unit_outlined),
                (value) => null),
          ],
        ),
      ),
    );
  }
}
