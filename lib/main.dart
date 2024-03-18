import 'package:flutter/material.dart';
import 'cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => const JoinUsScreen(),
          );
        },
      ),
    );
  }
}

class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Join Us',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        flexibleSpace: const FlexibleSpaceBar(
          background: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.yellow],
              ),
            ),
          ),
        ),
      ),
      body: const JoinUsForm(),
    );
  }
}

class JoinUsForm extends StatefulWidget {
  const JoinUsForm({super.key});

  @override
  State<JoinUsForm> createState() => _JoinUsFormState();
}

class _JoinUsFormState extends State<JoinUsForm> {
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Information',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          const MyTextField(hintText: 'Email'),
          const SizedBox(
            height: 15,
          ),
          const MyTextField(hintText: 'Phone Number'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Business Information',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          const MyTextField(hintText: 'Business Name'),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
            hintText: 'Business Type',
            icon: Icons.arrow_drop_down,
            onIconPressed: () {
              // Handle dropdown logic here
              // Show dropdown menu or perform any other actions
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const MyTextField(hintText: 'Product Type'),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Expanded(
                child: ListTile(
                  subtitle: MyTextField(hintText: 'Area'),
                ),
              ),
              Expanded(
                child: ListTile(
                  subtitle: MyTextField(hintText: 'District'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const MyTextField(hintText: 'Business Adress'),
          Row(
            children: [
              Checkbox(
                value: _agree,
                onChanged: (value) {
                  setState(() {
                    _agree = value!;
                  });
                },
              ),
              Expanded(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'I agree with the ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms and Conditions',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                        text: ' of Coop Cart',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 500,
            height: 14,
          ),
          SizedBox(
            width: 500,
            height: 50, // Set your desired width here
            child: ElevatedButton(
              onPressed: _agree
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    }
                  : null,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  _agree ? Colors.orange : Colors.grey.withOpacity(0.5),
                ),
              ),
              child: const Text(
                'Submit',
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
    );
  }
}

class MyTextField extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final VoidCallback? onIconPressed; // Callback function for the icon press

  const MyTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.onIconPressed,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  var outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Color.fromARGB(255, 240, 232, 232),
    ),
    borderRadius: BorderRadius.circular(15),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.orange,
      decoration: InputDecoration(
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        hintText: widget.hintText,
        suffixIcon: widget.icon != null
            ? IconButton(
                icon: Icon(widget.icon),
                onPressed: widget.onIconPressed, // Execute callback function
              )
            : null,
      ),
    );
  }
}
