import 'package:flutter/material.dart';

class ExpandedWidgetScreen extends StatefulWidget {
  const ExpandedWidgetScreen({super.key});

  @override
  State<ExpandedWidgetScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ExpandedWidgetScreen> {
  bool ischeckBoxselected = false;
  int isRadioselected = 0;
  String? selectedDropdownmenuValue ;
  List <String> listofBanks = ["HDFC","SBI","Union","RBI"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Widgets"),
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                    color: Colors.amberAccent,
                    child: Text(
                        "I am Child Expanded I am Child Expanded I am Child Expanded"))),
            Flexible(
                child: Container(
              color: Colors.deepOrangeAccent,
              child: Text(
                  'I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale I am flexibale  '),
            )),
            Text("Preferances "),
            Row(
              children: [
                Checkbox(
                    value: ischeckBoxselected,
                    onChanged: (status) {
                      setState(() {
                        ischeckBoxselected = status ?? false;
                      });
                    }),
                TextButton(
                    onPressed: () {},
                    child: const Text("TGerms and conditions")),
              ],
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("Custum Terms and Conditions"),
                value: ischeckBoxselected,
                onChanged: (isselected) {
                  setState(() {
                    ischeckBoxselected = isselected ?? false;
                  });
                }),
            RadioListTile(
                title: Text("Male"),
                value: 0,
                groupValue: isRadioselected,
                onChanged: (value) {
                  isRadioselected = value ?? 0;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("Female"),
                value: 1,
                groupValue: isRadioselected,
                onChanged: (value) {
                  isRadioselected = value ?? 1;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("Transgender"),
                value: 2,
                groupValue: isRadioselected,
                onChanged: (value) {
                  isRadioselected = value ?? 2;
                  setState(() {});
                }),
            DropdownButton(
              value: selectedDropdownmenuValue,
              items: listofBanks.map((e) => DropdownMenuItem(value: e,child: Text(e))).toList(),
            //   items: [
            //   DropdownMenuItem(
            //     child: Text("Raja"),
            //     value: "RA",
            //   ),
            //   DropdownMenuItem(f
            //     child: Text("Gogula"),
            //     value: "GG",
            //   ),
            //   DropdownMenuItem(
            //     child: Text("Veeramma"),
            //     value: "VR",
            //   ),
            //   DropdownMenuItem(
            //     child: Text("Amma"),
            //     value: "AM",
            //   ),
            // ],
             onChanged: (value) {
              setState(() {
                selectedDropdownmenuValue = value ?? '';
              });
            }),
          ],
        ),
      ),
    );
  }
}
