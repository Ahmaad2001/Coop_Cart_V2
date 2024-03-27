import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const ProductsCheckout());
}

class ProductsCheckout extends StatefulWidget {
  const ProductsCheckout({super.key});

  @override
  State<ProductsCheckout> createState() => _ProductsCheckoutState();
}

class _ProductsCheckoutState extends State<ProductsCheckout> {
  String? paymentMethod;

  void _placeOrder() {
    // Navigate to the LoginScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Checkout',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange, Colors.yellow],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Delivery Address',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 60,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 232, 232))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Frame.png',
                    width: 41,
                    height: 46,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    'Select Location',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 146,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color.fromARGB(250, 153, 153, 153),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 78,
              padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 240, 232, 232),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/share_location.png',
                    width: 46,
                    height: 46,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saved Address',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '389, Rue 233, Dubai, 0000',
                        style: TextStyle(
                          color: Color.fromARGB(250, 153, 153, 153),
                        ),
                      ),
                      Text(
                        'UAE',
                        style: TextStyle(
                          color: Color.fromARGB(250, 153, 153, 153),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 68,
                  ),
                  Radio(
                    value: true,
                    fillColor: const MaterialStatePropertyAll(Colors.orange),
                    activeColor: Colors.orange,
                    groupValue:
                        true, // Assuming you always want it to be active
                    onChanged: (bool? value) {
                      // Handle onChanged if needed
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Payment Method',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 78,
              padding: const EdgeInsets.fromLTRB(0, 10, 13, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 240, 232, 232),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("Online Payment"),
                      value: "Online Payment",
                      groupValue: paymentMethod,
                      fillColor: const MaterialStatePropertyAll(Colors.orange),
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        setState(() {
                          paymentMethod = value.toString();
                        });
                      },
                    ),
                  ),
                  Image.asset(
                    'assets/images/Visa.png',
                    width: 30,
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/Mastercard.png',
                    width: 30,
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/DinersClub.png',
                    width: 30,
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/Discover.png',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 78,
              padding: const EdgeInsets.fromLTRB(0, 10, 13, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 240, 232, 232),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("Cash On Delivery"),
                      value: "Cash On Delivery",
                      groupValue: paymentMethod,
                      fillColor: const MaterialStatePropertyAll(Colors.orange),
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        setState(() {
                          paymentMethod = value.toString();
                        });
                      },
                    ),
                  ),
                  Image.asset(
                    'assets/images/cash-on-delivery.png',
                    width: 36,
                    height: 38,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Order Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: TextStyle(color: Color.fromARGB(250, 153, 153, 153)),
                ),
                Text(
                  '290',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(color: Color.fromARGB(250, 153, 153, 153)),
                ),
                Text(
                  '10',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 0.01, // Spread radius
                blurRadius: 20, // Blur radius
                offset: const Offset(0, -0.5), // Offset from top
              ),
            ],
          ),
          height: 138,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Total Cost'), Text('300')],
              ),
              const SizedBox(
                height: 15,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: _placeOrder,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
