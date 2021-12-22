// all group members in grid view

import 'package:flutter/material.dart';
import 'package:myappp/members/GroupMembers.dart';
import 'package:myappp/members/member1.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          // header
          const Text(
            'These are the memers of group X',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Century Gothic',
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ), // give spave between top and bottom
          // wrap grid in a flexible to put it in a column
          Flexible(
            // grid view with members
            child: GridView.count(
              crossAxisCount:
                  2, // give the numder of items in a line on the grid
              scrollDirection: Axis.vertical, // give scroll direction
              shrinkWrap: true, // shrink items to fit
              children: [
                // button to member description
                //
                //duplicate form here for new member
                //
                TextButton(
                  onPressed: () {
                    // navigator function
                    Navigator.push(
                      context,
                      // page transition to member detials page
                      PageTransition(
                        //
                        //
                        // change child to new member file class
                        // eg Member2() from member2.dart
                        //
                        //
                        child: const Member1(),
                        // transition type
                        type: PageTransitionType.fade,
                        // transition duration
                        duration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                  // colum to hold te member image and name
                  child: Column(
                    children: [
                      // member image in circle
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage(
                          precious.image, // member image from class member
                        ),
                      ),
                      const Divider(
                        color: Colors.transparent,
                      ), // give spave between top and bottom
                      // member name
                      Text(
                        // member name from class member
                        precious.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Century Gothic',
                        ),
                      ),
                    ],
                  ),
                ),
                //
                // to here for new member
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}