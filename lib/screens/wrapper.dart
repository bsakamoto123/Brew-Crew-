import 'package:brew_crew/models/user.dart';
import 'package:flutter/material.dart';
import 'authenticate/authenticate.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    print(user);

    // return either Home or Authenticate widget
    if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}