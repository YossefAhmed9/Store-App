import 'package:flutter/material.dart';
import 'package:store_app/models/product%20model.dart';

Widget newCard({required ProductModel model}) => Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // SizedBox(
            //   height: 80,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Text(
                      model.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          '${model.price} \$',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Positioned(
              right: 50,
              bottom: 120,
              child: Image.network(
                model.image,
                width: 105,
                height: 105,
              ),
            ),
          ],
        ),
      ),
    );
