import 'package:flutter/material.dart';

class MenuPop extends StatefulWidget {
  @override
  _MenuPopState createState() => _MenuPopState();
}

class _MenuPopState extends State<MenuPop> {
  // list of required options
  List<String> options = [
    'Overview',
    'Stock latest price',
    'Dividens-Yields',
    'Performance',
    'Fundamental',
    'Finance',
    'Profile'
  ];

  // default selected option
  String selectedOption = 'Overview';

  // function to generate list of widgets consisting all options that will be displayed
  List<Widget> genList() {
    List<Widget> optionsWidgetList = [];
    optionsWidgetList.add(SizedBox(
      height: 20,
    ));
    for (String option in options) {
      optionsWidgetList.add(
        GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = option;
            });
          },
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    option,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  // to move the check icon to the end of the row
                  Spacer(),
                  // only display the check icon for the selected icon
                  selectedOption == option
                      ? Icon(
                          Icons.check,
                        )
                      : Container(
                          height: 0,
                        )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    }
    return optionsWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.85),
      body: Center(
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height / 2.55,
            width: 0.85 * MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: genList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
