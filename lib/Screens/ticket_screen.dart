import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/Components/news_and_exibition.dart';

class TicketScreen extends StatefulWidget {
  TicketScreen({required this.images});

  final String images;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  // String dropdownValue = '10 am - 8 pm';

  String? selectedValue;
  List<String> itemsForDropDown = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              child: Image.asset(
            widget.images,
            fit: BoxFit.fill,
          )),
          Positioned(
            top: 270,
            child: Container(
              decoration: kTicketStackContainerDecorationStyle,
              height: MediaQuery.of(context).size.height - 270,
              width: 360,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
                child: ListView(
                    primary: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'POLIN Museum',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Time New Roman',
                            ),
                          ),
                          IconButton(
                              onPressed: null, icon: Icon(Icons.bookmark))
                        ],
                      ),
                      const Text(
                        'It is a historical museum which presents the 1000 years of jewish life in the Polish lands. It is also a place of ... more ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Colors.white,
                              ),
                              height: 50,
                              width: 50,
                              child: const Icon(Icons.location_on)),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Anielewicza',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '00-157,Warszawa',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.white,
                            ),
                            height: 50,
                            width: 50,
                            child: const Icon(
                              Icons.calendar_today,
                              color: darkGreen,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Today open:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                '10 am - 6 pm',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //  const SizedBox(
                      //    height: 20,
                      //  ),
                      const Divider(),
                      NewsAndExibitions(
                        primary: true,
                        typeOfScrolling: Axis.vertical,
                      ),
                    ]),
              ),
            ),
          ),
          Positioned(
            top: 730,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15),
                child: Text('By Ticket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Time New Roman',
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
