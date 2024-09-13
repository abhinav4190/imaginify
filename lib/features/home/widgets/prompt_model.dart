import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:imaginify/core/theme/app_palette.dart';
import 'package:imaginify/features/auth/widgets/custom_button.dart';
import 'package:imaginify/features/home/views/generated_image_screen.dart.dart';

class PromptModel extends StatelessWidget {
  PromptModel({super.key});

  final TextEditingController _promptController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppPalette.background,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        CommunityMaterialIcons.creation,
                        color: AppPalette.primary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Prompt')
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _promptController,
                maxLines: 3,
                cursorColor: AppPalette.primary,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: const Color.fromARGB(255, 26, 26, 26),
                    filled: true,
                    errorStyle: const TextStyle(),
                    hintText:
                        'Type your imagination and let the  Imaginify visualize it.',
                    contentPadding: const EdgeInsets.all(20),
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        color: AppPalette.textColor,
                        letterSpacing: 0.5)),
                style:
                    const TextStyle(fontSize: 12, color: AppPalette.textColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter the prompt.';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.pushReplacementNamed(
                          GeneratedImageScreen.routeName,
                          pathParameters: {'prompt': _promptController.text});
                    }
                  },
                  buttonText: 'Generate')
            ],
          ),
        ),
      ),
    );
  }
}