import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class billScreen extends StatefulWidget {
  const billScreen({super.key});

  @override
  State<billScreen> createState() => _billScreenState();
}

class _billScreenState extends State<billScreen> {
  double unit = 0.00;
  double rate = 0.00;
  var result = 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 182, 132, 1),
        centerTitle: true,
        title: Text(
          'CALACULATOR',
          style:
              TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[800]),
        ),
      ),
      body: ListView(
        children: [
          Gap(10),
          Icon(
            Icons.electric_bike,
            color: Colors.grey[800],
            size: 50,
          ),
          Gap(10),
          Center(
            child: Text(
              'Electric Bill',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Gap(15),
          Center(
            child: Text(
              'Calculator',
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 5),
            child: Text(
              'Units',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Gap(2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  unit = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.accessible_forward, color: Colors.grey),
                hintText: 'Enter Unit of bill (Kw)',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Rate',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  rate = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.currency_rupee, color: Colors.grey),
                hintText: 'Enter Rate per Unit (₹)',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent)),
              ),
            ),
          ),
          Gap(20),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey[500],
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text('or'),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey[500],
                  height: 2,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                result = unit * rate;
              });
            },
            child: Container(
              margin: EdgeInsets.all(30),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 182, 132, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Bill',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[600],
                  ),
                ),
                Gap(10),
                Text(
                  '₹ $result',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Terms and conditions*',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Gap(5),
                Text(
                  'Policy',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
