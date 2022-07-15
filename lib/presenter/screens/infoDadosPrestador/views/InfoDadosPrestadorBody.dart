import 'package:flutter/cupertino.dart';
import 'headerInfoDadosPrestador.dart';

class InfoDadosPrestadorBody extends StatelessWidget {
  const InfoDadosPrestadorBody({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderInfoDadosPrestador(),
        ],
      ),
    );
  }
}
