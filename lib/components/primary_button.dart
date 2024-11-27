import 'package:flutter/material.dart';

primaryButton(Function onPressedFn, String tooltip, Widget child) =>
    FloatingActionButton(
      onPressed: () => onPressedFn,
      tooltip: tooltip,
      child: child,
    );
