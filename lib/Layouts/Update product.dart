import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/product model.dart';
import '../services/put service.dart';

class UpdateProduct extends StatelessWidget {
  const UpdateProduct();

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
    putService updateFunction = putService();
    Object? args = ModalRoute.of(context)?.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        key: scaffoldKey,
        title: Text(
          'Update product',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                defaultTextFormField(
                    updateName,
                    TextInputType.text,
                    ProductNameController,
                    //submit
                    (value) {},
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
                    updatePrice, TextInputType.number, ProductPriceController,
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.purple),
                  child: defaultButton(200, 70, Colors.transparent, () {
                    try {
                      updateFunction
                          .putMethod(
                              title: ProductNameController.toString(),
                              price: ProductPriceController.toString(),
                              description: ProductDescController.toString(),
                              image: ProductPhotoController.toString(),
                              category: 'electronic')
                          .then((value) {
                        print(
                            '${updateFunction.putMethod(title: ProductNameController.toString(), price: ProductPriceController.toString(), description: ProductDescController.toString(), image: ProductPhotoController.toString(), category: 'electronic')}');
                        Navigator.pop(context);
                        print(value);
                      });
                    } catch (error) {
                      print('this is the error:${error.runtimeType} ');
                      print('this is the error:${error.toString()} ');
                    }
                    print('this is the product: ');
                  }, 'Update Now!', Colors.white, 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
