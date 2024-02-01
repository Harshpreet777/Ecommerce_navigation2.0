import 'package:flutter/material.dart';
import 'package:navigation_2_demo/constants/color_constant.dart';
import 'package:navigation_2_demo/constants/image_list.dart';
import 'package:navigation_2_demo/constants/variables.dart';
import 'package:navigation_2_demo/models/response_model.dart';
import 'package:navigation_2_demo/routing/routes.dart';
// import 'package:navigation_2_demo/models/response_model.dart';

class HomeScreenClass extends StatefulWidget {
  const HomeScreenClass({super.key});

  @override
  State<HomeScreenClass> createState() => _HomeScreenClassState();
}

class _HomeScreenClassState extends State<HomeScreenClass> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstant.lightBackGround,
                    child: IconButton(
                      onPressed: null,
                      icon: Image.asset('assets/images/menu.png'),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.lightBackGround,
                    child: IconButton(
                        onPressed: null,
                        icon: Image.asset('assets/images/Bag.png')),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome to Laza.',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: ColorConstant.fontColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextFormField(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.searchRoute);
                      },
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.fontColor),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          contentPadding: const EdgeInsets.all(15),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: ColorConstant.fontColor,
                            size: 30,
                          ),
                          filled: true,
                          fillColor: ColorConstant.textFormFieldColor,
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: ColorConstant.fontColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)))),
                            backgroundColor: MaterialStatePropertyAll(
                                ColorConstant.violetBlue)),
                        onPressed: null,
                        child: const Icon(
                          Icons.mic_none,
                          color: Colors.white,
                          size: 30,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose Brand',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: ColorConstant.fontColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: ImageList.imageList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.textFormFieldColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15))),
                          width: 135,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: IconButton(
                                      onPressed: null,
                                      icon: Image.asset(
                                        ImageList.imageList[index],
                                        fit: BoxFit.contain,
                                      )),
                                ),
                              ),
                              Text(
                                StringList.stringList[index],
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arraival',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: ColorConstant.fontColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: ImageList.imageList2.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  DetailModel data = details[index];

                  return InkWell(
                    onTap: () {
                      Variables.name = data.name;
                      Variables.price = data.price;
                      Navigator.of(context).pushNamed(Routes.detailsRoute,
                          arguments: {'name': data.name, 'price': data.price,'image':data.image});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: ColorConstant.textFormFieldColor),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  ImageList.imageList2[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const Positioned(
                                right: 10,
                                top: 5,
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.favorite_border_outlined)))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              data.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '\$${data.price.toString()}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
              size: 0,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Bag.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/wallet.png'),
            label: '',
          )
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
            color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(
            color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w400),
        showUnselectedLabels: true,
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedIconTheme: const IconThemeData(color: Colors.blue),
      ),
    );
  }
}
