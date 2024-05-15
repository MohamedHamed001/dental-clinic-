// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class BillingDetailsPage extends StatefulWidget {
//   @override
//   _BillingDetailsPageState createState() => _BillingDetailsPageState();
// }

// class _BillingDetailsPageState extends State<BillingDetailsPage> {
//   final _formKey = GlobalKey<FormState>();
//   late String cardNumber, expiryDate, cvc, cardHolderName;

//   Map<String, dynamic>? paymentIntentData;

//   @override
//   Widget build(BuildContext context) {
//     final themeColor = Color(0xFF52BFF5);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Billing Details'),
//         backgroundColor: themeColor,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               _buildTextField(
//                 label: 'Card Number',
//                 onSaved: (value) => cardNumber = value!,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Expiry Date (MM/YY)',
//                 onSaved: (value) => expiryDate = value!,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'CVC',
//                 onSaved: (value) => cvc = value!,
//               ),
//               SizedBox(height: 20),
//               _buildTextField(
//                 label: 'Card Holder Name',
//                 onSaved: (value) => cardHolderName = value!,
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: themeColor,
//                   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 onPressed: _handlePayment,
//                 child: Text('Pay'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required FormFieldSetter<String> onSaved,
//   }) {
//     final themeColor = Color(0xFF52BFF5);

//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         prefixIcon: Icon(
//           Icons.payment,
//           color: themeColor,
//         ),
//       ),
//       onSaved: onSaved,
//     );
//   }

//   void _handlePayment() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       _processPayment();
//     }
//   }

//   void _processPayment() async {
//     try {
//       paymentIntentData = await _createPaymentIntent('10', 'USD');
//       await Stripe.instance.initPaymentSheet(
//           paymentSheetParameters: SetupPaymentSheetParameters(
//         paymentIntentClientSecret: paymentIntentData!['client_secret'],
//         merchantDisplayName: 'House of Dental',
//       ));
//       await _displayPaymentSheet();
//     } catch (e) {
//       print('Error: $e');
//     }
//   }

//   Future<void> _displayPaymentSheet() async {
//     try {
//       await Stripe.instance.presentPaymentSheet();
//       setState(() {
//         paymentIntentData = null;
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment Successful')),
//       );
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment Failed')),
//       );
//     }
//   }

//   Future<Map<String, dynamic>> _createPaymentIntent(
//       String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         'amount': calculateAmount(amount),
//         'currency': currency,
//         'payment_method_types[]': 'card',
//       };
//       var response = await http.post(
//         Uri.parse(
//             'https://your-backend.com/create-payment-intent'), // Replace with your backend URL
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(body),
//       );
//       return jsonDecode(response.body);
//     } catch (err) {
//       print('Error: $err');
//       throw err;
//     }
//   }

//   int calculateAmount(String amount) {
//     final intAmount = (double.parse(amount) * 100).toInt();
//     return intAmount;
//   }
// }
