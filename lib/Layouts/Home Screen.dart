import 'package:flutter/material.dart';
import 'package:store_app/components/new%20card.dart';
import 'package:store_app/services/getAllproducts.dart';

import '../models/product model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Store App ',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                )),
          ],
        ),
        body: SafeArea(
          child: FutureBuilder<List<ProductModel>>(
              future: GetAllproducts().getAllproducts(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<ProductModel>> snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel>? products = snapshot.data;
                  print('asfasfwfewefwe ${snapshot.data}');
                  return GridView.builder(
                    itemCount: snapshot.data?.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) =>
                        newCard(model: snapshot.data![index]),
                  );
                } else {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.amber,
                  ));
                }

                // else {
                //   return const Text('null');
                // }
              }),
        ));
  }
}
