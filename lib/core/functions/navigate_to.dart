import 'package:flutter/material.dart';

Future<dynamic> navigateTo(BuildContext context,Widget view) => Navigator.push(context, MaterialPageRoute(builder: (context) => view));
