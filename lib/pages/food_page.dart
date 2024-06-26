import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_button.dart';
import 'package:fooddelivery/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({
    required this.food,
    super.key,
  }) {
    //initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food Images
                  Image.asset(widget.food.imagePath),
                  //food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  //food price
                  Text(
                    '\Ar${widget.food.price}\k',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 10),

                  //food description
                  Text(widget.food.description),

                  const SizedBox(height: 10),

                  Divider(color: Theme.of(context).colorScheme.secondary),

                  const SizedBox(height: 10),

                  //addons
                  Text(
                    "Sauce",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        //get individual addons
                        Addon addon = widget.food.availableAddons[index];

                        //return checkbox UI
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            '\Ar${addon.price}\k',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
//56:03
            //button -> add to cart
            MyButton(
              onTap: () {},
              text: "Ajouter au panier",
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
