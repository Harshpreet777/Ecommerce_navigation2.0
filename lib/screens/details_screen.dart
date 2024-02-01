import 'package:flutter/material.dart';
import 'package:navigation_2_demo/constants/color_constant.dart';
import 'package:navigation_2_demo/constants/image_list.dart';

class DetailsScreenClass extends StatefulWidget {
  const DetailsScreenClass({super.key});

  @override
  State<DetailsScreenClass> createState() => _DetailsScreenClassState();
}

class _DetailsScreenClassState extends State<DetailsScreenClass> {
  // final name=routeArgs['name'].toString();
  // final price=routeArgs['price'].toString();
  @override
  Widget build(BuildContext context) {
  final Map routeArgs=ModalRoute.of(context)?.settings.arguments as Map<String,Object>;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20,
              color: ColorConstant.textFormFieldColor,
            ),
            Stack(
              children: [
                Container(
                  color: ColorConstant.textFormFieldColor,
                  child: Image.asset('assets/images/firstguy.png'),
                ),
                const Positioned(
                  left: 25,
                  top: 30,
                  child: CircleAvatar(
                    minRadius: 25,
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 30,
                  child: CircleAvatar(
                      minRadius: 25,
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/Bag.png',
                        fit: BoxFit.contain,
                      )),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 2.3,
                  child: Container(
                    color: ColorConstant.textFormFieldColor,
                    child: Image.asset(
                      'assets/images/Rectangle 574.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Men's Printed Pullover Hoodie",
                    style: TextStyle(
                        color: ColorConstant.fontColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Price',
                    style: TextStyle(
                        color: ColorConstant.fontColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    routeArgs['name'],
                    // Variables.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    routeArgs['price'].toString(),
                    // Variables.price.toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: ImageList.imageList3.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: ColorConstant.textFormFieldColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(ImageList.imageList3[index])),
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Size',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    'Size Guide',
                    style: TextStyle(
                        color: ColorConstant.fontColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: StringList.stringList2.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: const MaterialStatePropertyAll(
                                    EdgeInsets.all(15)),
                                shape: const MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)))),
                                backgroundColor: MaterialStatePropertyAll(
                                    ColorConstant.textFormFieldColor)),
                            onPressed: null,
                            child: Text(
                              StringList.stringList2[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text:
                        'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ColorConstant.fontColor)),
                const TextSpan(
                    text: 'Read More..',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black))
              ])),
            ),
            ListTile(
              title: const Text(
                'Total Price',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              subtitle: Text(
                'with VAT,SD',
                style: TextStyle(color: ColorConstant.fontColor),
              ),
              trailing: const Text(
                'Price Here',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      backgroundColor:
                          MaterialStatePropertyAll(ColorConstant.violetBlue)),
                  onPressed: null,
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
