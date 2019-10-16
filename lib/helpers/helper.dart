import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

AppState state(BuildContext context) => Provider.of<AppState>(context);
