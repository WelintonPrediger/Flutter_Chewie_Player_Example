import 'package:chewie_player_example/app/modules/video/components/components_export.dart';
import 'package:flutter/material.dart';

class ModalComplaint extends StatefulWidget {
  const ModalComplaint({Key? key}) : super(key: key);

  @override
  State<ModalComplaint> createState() => _ModalComplaintState();
}

class _ModalComplaintState extends State<ModalComplaint> {

  List<String> list = [
    'Conteúdo sexual',
    'Conteúdo violento',
    'Conteúdo de incitação ao ódio ou abusivo',
    'Assédio ou bullying',
    'Atos perigosos ou nocivos',
    'Spam ou enganoso',
    'Viola meus direitos',
    'Problemas com legendas',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Denunciar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CloseButton(onPressed: () => Navigator.pop(context))
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        const Text('A seguir preencha as opções e confirme sua denuncia.'),
        const SizedBox(height: 20.0),
        DropdownOptionsComplaint(listOptions: list),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(child: CustomElevatedButton(title: 'Enviar', onTap: () => Navigator.pop(context))),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
