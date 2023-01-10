import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _deliveryAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil de l\'utilisateur'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) {
                  if (value==null) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Adresse de livraison'),
                validator: (value) {
                  if (value==null) {
                    return 'Veuillez entrer votre adresse de livraison';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _deliveryAddress = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Valider et enregistrer les changements lorsque le bouton est pressé
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                   
                    
                  }
                },
                child: Text('Mettre à jour'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
