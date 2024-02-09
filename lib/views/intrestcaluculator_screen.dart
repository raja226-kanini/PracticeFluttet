import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IntrestCaluculatorScreen extends StatefulWidget {
  const IntrestCaluculatorScreen({super.key});

  @override
  State<IntrestCaluculatorScreen> createState() =>
      _IntrestCaluculatorScreenWidgetState();
}

class _IntrestCaluculatorScreenWidgetState
    extends State<IntrestCaluculatorScreen> {
  var _currencyItems = ["Rupees", "Dollar"];
  String? _selectedCurrency = "Rupees"; // Track the selected currency

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: const Text("Intrest Caluculator")),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:
                      "https://www.smallcase.com/wp-content/uploads/2023/07/Compound-Interest-Calculator-1.png",
                  width: 200,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Pricipal",
                        hintText: "Enter Pricipal ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(05),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Rate of Intrest   ",
                        hintText: "Enter Rate of Intrest in percentage",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(05),
                        )),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                        keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Term",
                            hintText: "Enter the Term data",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(05),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          items: _currencyItems.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _selectedCurrency,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedCurrency = newValue;
                            });
                            print("Selected currency: $newValue");
                          },
                        ),
                      ),
                    ),
                  ],
                ),
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ElevatedButton(onPressed: (){}, 
                      child: Text("Caluculate"),
                      ),
                      
                      ElevatedButton(onPressed: (){}, 
                      child: Text("Reset"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      )
                    ],
                  
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Todo List"),
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
