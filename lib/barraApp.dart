import 'package:flutter/material.dart';

class BarraApp extends StatelessWidget {
  const BarraApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: Builder(builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, top: 9, right: 6),
              child: IconButton(
                icon: Image.asset('assets/images/menu.png'),
                color: Colors.black,
                onPressed: () {},
              ),
            );
          }),
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 70.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 15),
                ),
                const Text(
                  'Cameron St. Boston',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10.0),
              child: Container(
                width: 55.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://scontent.fbjp1-1.fna.fbcdn.net/v/t39.30808-6/274006977_5263251960364989_7689438607282306194_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFwuvHcGU2sJh19dnUGKnZeeXWZ4NLItWN5dZng0si1Y7hvvP_G14Z7FkF4OevScCr2FqQx-lqYHNRzIzO1Du2o&_nc_ohc=b4kWpGkTb20AX_wmzwu&_nc_ht=scontent.fbjp1-1.fna&oh=00_AT_Ns3WRAqD3r5-5Njj76VGUUA08WTv714KpfB6JDdbuig&oe=622C608A'),
                        fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 4.0
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}