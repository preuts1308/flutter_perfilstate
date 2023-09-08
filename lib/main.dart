import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
   
   @override
   Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Perfil con state'),
        ),
        body: ProfileBody(),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/diego.jpg'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Diego Leonardo Angarita Mora',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Estudiante de Ingenieria de sistemas',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 16.0),
          Text(
            'Soy Estudiante De ingnieia de sistema con experiencia en...',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.0),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: Text('Fluttera'),backgroundColor: Colors.yellow,),
              Chip(label: Text('Java'),backgroundColor: Colors.blue),
              Chip(label: Text('Ciberseguridad'),backgroundColor: Colors.red),

            ],
          ),
          SizedBox(height: 24.0),
          ListTile(
            title: Text('Experiencia Laboral'),
            subtitle: Text('Estudiante de Ingenieria de sistemas'),
          ),
          ListTile(
            title: Text('Educación'),
            subtitle: Text('Universidad Jorge Tadeo Lozano - Ingeniería de sistemas'),
          ),
          
        ],
      ),
    );
   }
}