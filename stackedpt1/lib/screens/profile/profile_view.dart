import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedpt1/screens/profile/profile_viewmodel.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                viewModel.counter.toString(),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  viewModel.addValue();
                },
                child: const Text("ADD"),
              )
            ],
          )),
        );
      },
    );
  }
}
