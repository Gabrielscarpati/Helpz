
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoadingButton extends StatefulWidget {
  final String text;
  final Function()? function;
  final RoundedLoadingButtonController buttonController;

  const LoadingButton({
    Key? key,
    required this.text,
    this.function,
    required this.buttonController
  }) : super(key: key);

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Center(
        child: RoundedLoadingButton(
          controller: widget.buttonController,
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue.shade500,
                    Colors.blue.shade400
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius:
                BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: 350.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onPressed: widget.function,
        ),
      ),
    );
  }
}
