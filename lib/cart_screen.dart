import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'products_checkout_screen.dart';

void main() {
  runApp(const CartScreen());
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // var _selectedNumber = 0;
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Your Cart',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 105,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 240, 232, 232))),
                child: Row(
                  children: [
                    Image.asset('assets/images/headphones.png'),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Product Name',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text(
                          'Brand Name',
                          style: TextStyle(
                              color: Color.fromARGB(250, 153, 153, 153),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        InputQty(
                          maxVal: 100.0,
                          initVal: 0,
                          minVal: -100.0,
                          steps: 1,
                          decoration: const QtyDecorationProps(
                            isBordered: false,
                            btnColor: Colors.blue,
                            borderShape: BorderShapeBtn.circle,
                          ),
                          onQtyChanged: (val) {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    const Text('200')
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 500,
                height: 105,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 240, 232, 232))),
                child: Row(
                  children: [
                    Image.asset('assets/images/popcorn.png'),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Product Name',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text(
                          'Brand Name',
                          style: TextStyle(
                              color: Color.fromARGB(250, 153, 153, 153),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        InputQty(
                          maxVal: 100.0,
                          initVal: 0,
                          minVal: -100.0,
                          steps: 1,
                          decoration: const QtyDecorationProps(
                            isBordered: false,
                            btnColor: Colors.blue,
                            borderShape: BorderShapeBtn.circle,
                          ),
                          onQtyChanged: (val) {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    const Text('200')
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Special Instructions',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Note To Rider',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 240, 232, 232),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 240, 232, 232),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Anything we need to know?',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Payment Summary',
                style: TextStyle(fontSize: 16),
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
            ],
          ),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductsCheckout()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Confirm Payment and Address',
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
