import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/CustomText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double red = 100;
  double blue = 100;
  double green = 100;
  double alpha = 100;
  bool isOpen = false;


  void openFilter(){
    setState(
            (){
          isOpen = !isOpen;
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/ebu.jpg',
              fit: BoxFit.cover,
              color: Color.fromARGB(alpha.toInt(), red.toInt(), green.toInt(), blue.toInt()),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: isOpen ? MediaQuery.of(context).size.height * 0.5 : 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
              ),
              child: isOpen ? Column(
                children: [
                  ListTile(
                    title: CustomText(title: 'Filter'),
                    trailing: IconButton(
                      onPressed: openFilter,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const CustomText(title: 'Red'),
                  Slider(
                    min: 0,
                    max: 255,
                    divisions: 255,
                    value: red,
                    activeColor: Colors.white54,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(
                              (){
                            red = value;
                          }
                      );
                    },
                  ),
                  const CustomText(title: 'Blue'),
                  Slider(
                    min: 0,
                    max: 255,
                    divisions: 255,
                    value: blue,
                    activeColor: Colors.white54,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(
                              (){
                            blue = value;
                          }
                      );
                    },
                  ),
                  const CustomText(title: 'Green'),
                  Slider(
                    min: 0,
                    max: 255,
                    divisions: 255,
                    value: green,
                    activeColor: Colors.white54,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(
                              (){
                            green = value;
                          }
                      );
                    },
                  ),
                  const CustomText(title: 'Alpha'),
                  Slider(
                    min: 0,
                    max: 255,
                    divisions: 255,
                    value: alpha,
                    activeColor: Colors.white54,
                    inactiveColor: Colors.lightGreen,
                    onChanged: (value) {
                      setState(
                              (){
                            alpha = value;
                          }
                      );
                    },
                  ),
                ],
              ) :
              ListTile(
                title: CustomText(title: 'Filter'),
                trailing: IconButton(
                  onPressed: openFilter,
                  icon: const Icon(
                    Icons.arrow_drop_up,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}