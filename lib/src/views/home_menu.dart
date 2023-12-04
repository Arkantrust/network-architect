import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Network Architect',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/home-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _HomeButton(
                    label: 'Play',
                    onPressed: _onPLay,
                  ),
                  _HomeButton(label: 'How to Play?', onPressed: _onHowToPlay),
                  _HomeButton(
                    label: 'Exit',
                    onPressed: _onExit,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPLay() {
    print('Playing');
  }

  void _onHowToPlay() async {
    final Uri url =
        Uri.parse('https://github.com/Arkantrust/network-architect/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  void _onExit() {
    SystemNavigator.pop();
  }
}

class _HomeButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _HomeButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: MaterialButton(
        height: MediaQuery.sizeOf(context).height * 0.06,
        minWidth: MediaQuery.sizeOf(context).width * 0.2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hoverColor: Theme.of(context).colorScheme.secondary,
        color: Theme.of(context).colorScheme.primaryContainer,
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
