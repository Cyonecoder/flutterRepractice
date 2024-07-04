import 'package:flutter/material.dart';

import '../api/mock_foodermo_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = mockFooderMoService();
  
  
  
   ExploreScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Explore Screen'),);
  }
}
