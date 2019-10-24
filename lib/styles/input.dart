import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final primary = Color(0xFF9254DE);
final enabled = Color(0xFFEFDBFF);
final textStyle = TextStyle(color: primary, fontSize: 14.0);
final border = OutlineInputBorder(borderSide: BorderSide(color: primary));
final focuseBorder = OutlineInputBorder(borderSide: BorderSide(color: primary));

final focusErrorBorder =
    OutlineInputBorder(borderSide: BorderSide(color: primary));

final enabledBorder =
    OutlineInputBorder(borderSide: BorderSide(color: enabled));

final errorBorder = OutlineInputBorder(borderSide: BorderSide(color: primary));

final hintStyle = TextStyle(color: enabled, fontSize: 14.0);

final contentPadding = EdgeInsets.fromLTRB(12, 6, 12, 6);
