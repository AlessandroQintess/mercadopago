import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:mercadopago/mercadopago_sdk.dart';

void main() async {
  runApp(const MaterialApp(
    home: MercadoPagoCheckout(),
  ));
}
