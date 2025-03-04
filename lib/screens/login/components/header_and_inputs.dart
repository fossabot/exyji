import 'package:exyji/constants.dart';
import 'package:flutter/material.dart';

class HeaderAndInputs extends StatelessWidget {
  const HeaderAndInputs({
    Key? key,
  }) : super(key: key);

  _signIn(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(AppRouter.discover);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: dPadding * 6),
          child: Text(
            "Andro X",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(dPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Username",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w600),
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.lime.withOpacity(0.7), width: 2.0),
                )),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(dPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Password",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w600)),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lime.withOpacity(0.7), width: 2.0),
              )))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: dPadding * 2),
          child: ElevatedButton(
              onPressed: () => _signIn(context),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: Colors.blue),
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: dPadding * 2, vertical: dPadding),
                  child: Text("Sign in",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700)))),
        ),
      ],
    );
  }
}
