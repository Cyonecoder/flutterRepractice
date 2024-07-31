import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/foodersimo_assets/empty_list.png'),
              ),
            ),
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Shopping for ingredients?\n' +
                  'Tap the + button to write them down',
              textAlign: TextAlign.center,
            ),
            MaterialButton(textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),color: Colors.green,onPressed: () {
              //Todo: go to recipes tab
            },child: Text('Browse Recipes'),)
          ],
        ),
      ),
    );
  }
}
