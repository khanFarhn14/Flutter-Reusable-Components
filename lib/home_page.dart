import 'package:flutter/material.dart';
import 'package:reusable_components/widgets/widget_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              WidgetComponent.showSnackBarForFeedback(cntxt: context, message: "An error", isError: true);
            },
            child: const Text("Show Snackbar")
          )
        ],
      ),
    );
  }
}