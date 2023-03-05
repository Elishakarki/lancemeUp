import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: 
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Revamp Project",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/globe.png",
                        height: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Template: Kanban'),
                  Text('Status: On hold'),
                  Text('Last Updated: 2m ago'),
                  SizedBox(height: 10,),
                  LinearProgressIndicator(
                    value: 0.5,
                  ),
                 Stack(
  children: [
    // Positioned(
    //   left: 0,
      
    //     child: CircleAvatar(
    //       radius: 5,
    //       backgroundImage: AssetImage('assets/harry.png'),
    //     ),
      
    // ),
    // Positioned(
    //   left: 20,
    //   child: SizedBox(
    //     height: 50,
    //     width: 50,
    //     child: CircleAvatar(
    //       radius: 25,
    //       backgroundImage: AssetImage('assets/man.png'),
    //     ),
    //   ),
    // ),
    
    // Positioned(
    //   left: 40,
    //   child: SizedBox(
    //     height: 50,
    //     width: 50,
    //     child: CircleAvatar(
    //       radius: 25,
    //       backgroundImage: AssetImage('assets/obama.png'),
    //     ),
    //   ),
    // ),
  ],
),

                  
                ],
              ),
            
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
