import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

const publicKey = "TEST-d350dfc2-84bc-4388-a9df-e5f23ebd41b8";
const preferenceId =
    "TEST-6434238572548382-060123-28c3d5b0ed2a6eaa428a3b78158a10b1-84752834";

class MercadoPagoCheckout extends StatefulWidget {
  const MercadoPagoCheckout({Key? key}) : super(key: key);

  @override
  State<MercadoPagoCheckout> createState() => _MercadoPagoCheckoutState();
}

class _MercadoPagoCheckoutState extends State<MercadoPagoCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MercadoPago"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.blue,
                onPressed: () async {
                  PaymentResult result =
                      await MercadoPagoMobileCheckout.startCheckout(
                    publicKey,
                    preferenceId,
                  );
                  print(result.toString());
                },
                child: Text(
                  "Pagamento",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
