import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int totalAmount=0;
  Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void launchPayment() async {
    var options = {
      'key': 'rzp_test_CBVRPaPOr7wlHZ', //<-- your razorpay api key/test or live mode goes here.
      'amount': totalAmount * 100,
      'name': 'T Venkata Navaneeth',
      'description': 'Donation',
      'prefill': {'contact': '8106223636', 'email': 'example@gmail.com'},
      
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: 'Error ' + response.code.toString() + ' ' + response.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: 'Payment Success ' + response.paymentId,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text("GATEWAY"),
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter the amount to donate',
            ),
            LimitedBox(
              maxWidth: 150.0,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Amount',
                ),
                onChanged: (val) {
                  setState(() {
                    totalAmount = num.parse(val);
                  });
                },
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              child: Text('PAY NOW'),
              onPressed: () {
                launchPayment();
              },
            )
          ],
        ),
      ),

    );
  }
}