import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewHubPrestadorHeader extends StatelessWidget {
  ViewHubPrestadorHeader({Key? key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44, left: 32, right: 32, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Olá,",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
              Text('usuario.primeiroNome()',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 36)),
            ],
          ),
          InkWell(
            onTap: () {
             // viewActions.AbreTelaInfoPrestador(context, viewModel);
            },
            child: Hero(
              tag: 'd'/*viewModel.prestador.id*/,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.black, spreadRadius: 1)
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/quickfix-589ac.appspot.com/o/20ff9e62-8103-446e-86fd-c7b498ccf2ee8137773343749861461.jpg2022-06-20%2013%3A24%3A39.631378?alt=media&token=e1a0548e-ee01-420e-82a3-3861c420a846'),
                  radius: 36.0,
                  child: Text("",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
