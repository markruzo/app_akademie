import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Banner',
      home: CustomStepper(),
    );
  }
}

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int currentStep = 0;
  bool isCompleted = false;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final adress = TextEditingController();
  final postcode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF6137),
        title: const Text(
          'Custom Stepper',
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFFFF6137),
          ),
        ),
        child: Stepper(
          elevation: 0,
          type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              setState(() => isCompleted = true);
              print('Completed');
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel: () {
            setState(() => currentStep -= 1);
          },
          onStepTapped: (step) => setState(() => currentStep = step),
          controlsBuilder: (context, controls) {
            final isLastStep = currentStep == getSteps().length - 1;
            return Container(
              margin: const EdgeInsets.only(top: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        onPressed: controls.onStepContinue,
                        child: Text(isLastStep ? 'Check' : 'Next'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // if (currentStep != 0)
                  Expanded(
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        onPressed: controls.onStepCancel,
                        child: const Text('Back'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: const Text('Account'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: firstName,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              TextFormField(
                controller: lastName,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: const Text('Address'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: adress,
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),
              TextFormField(
                controller: postcode,
                decoration: const InputDecoration(
                  labelText: 'Postcode',
                ),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text('Complete'),
          content: Container(),
        ),
      ];
}
