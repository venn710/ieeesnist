import 'package:flutter/material.dart';
class IEEEHYD extends StatefulWidget {
  @override
  _IEEEHYDState createState() => _IEEEHYDState();
}

class _IEEEHYDState extends State<IEEEHYD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IEEE-HYD"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("IEEE hyderabad Section",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('IEEE Hyderabad Section is one of the most active sections of IEEE in India. IEEE was formally introduced in Hyderabad, on June 1981, when a group of engineers in Hyderabad decided to form an IEEE sub-Section here. This sub-Section was rapidly elevated to a full Section, in 1984 (the year of IEEE Centenary celebrations). All IEEE members, residing in the state of Andhra Pradesh and Telangana, India, are automatically members of the IEEE Hyderabad Section. ',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Our strength (in numbers) is 5924 members (as per the Hyderabad Section Report 2018). The Section has NINE Chapters – Computer Society (CS), Communication Society (COMSOC)/Signal Processing Society (SPS), Computational Intelligence Society (CIS)/Geoscience and Remote Sensing Society (GRSS), CAS/EDS, Education Society, MTT/AP/EMC Societies, Power and Energy Society (PES)/Industry Applications Society(IAS)/Power Electronics society(PELS), Photonics Society, Technology and Engineering Management Society(TEMS) and TWO Affinity Groups – Women in Engineering (WiE) and Young Professionals (YP).',style: TextStyle(fontSize: 20)),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.blue[200],BlendMode.darken),
                        child: Image.asset('assets/images/About/hydsec.png',)))
                  )
                ],
              ),
            ),
          ),
          ],
      ),
    );
  }
}

