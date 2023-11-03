import 'package:flutter/material.dart';
import 'package:torch_app/services.dart';

class TorchController extends StatelessWidget {
  const TorchController({super.key});

  @override
  Widget build(BuildContext context) {
    Servicess services = Servicess();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text('Torch App'),
      ),
      body: FutureBuilder<bool>(
        future: services.isTorchAvailable(context),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData && snapshot.data!) {
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Enable torch'),
                      onPressed: () async {
                        services.enableTorch(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Disable torch'),
                      onPressed: () {
                        Servicess().disableTorch(context);
                      },
                    ),
                  ),
                ),
              ],
            );
          } else if (snapshot.hasData) {
            return const Center(
              child: Text('No torch available.'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
