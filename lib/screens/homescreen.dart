import 'package:aeroplane/screens/app_info_list.dart';
import 'package:aeroplane/screens/hotel_screen.dart';
import 'package:aeroplane/screens/ticket_view.dart';
import 'package:aeroplane/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgcolor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                          ),
                        ],
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "assets/images/airplanelogo.jpg"))))
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_outlined,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headlineStyle4,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headlineStyle2),
                      InkWell(
                          onTap: () => {print("You are tapped")},
                          child: Text(
                            "View all",
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor),
                          )
                          ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:EdgeInsets.only(left: 20),
    child: Row(
      children:
      hotst.map((singleticket) => TicketView(tombo: singleticket)).toList()
        
      
        
    ),
            ),
            const Gap(15),
            //Hotel UI is started from here..
                   Container(
                     padding:const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hotels", style: Styles.headlineStyle2),
                        InkWell(
                            // ignore: avoid_print
                            onTap: () => {print("You are tapped")},
                            child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                            )
                            ),
                      ],
                    ),
               ),
               const Gap(15),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                 child: Row(
                children:hotelList.map((singlehotel)=>Hotelscreen(hotel: singlehotel)).toList(),
              ),
               ),
          ],
        ));
  }
}
