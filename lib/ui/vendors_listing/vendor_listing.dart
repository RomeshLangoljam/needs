import 'package:flutter/material.dart';

import 'model/vendors_result.dart';

class VendorListing extends StatefulWidget {
  @override
  _VendorListingState createState() => _VendorListingState();
}

class _VendorListingState extends State<VendorListing> {
  List<Vendors> item = new List<Vendors>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item.add(new Vendors(name: "Sanjoy Photography",address: "Kha-Sanjebam",phoneNumber: "80808080880"));
    item.add(new Vendors(name: "Sanjoy Photography",address: "Kha-Sanjebam",phoneNumber: "80808080880"));
    item.add(new Vendors(name: "Sanjoy Photography",address: "Kha-Sanjebam",phoneNumber: "80808080880"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vendors"),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              Vendors vendor=item[index];
              return ListTile(
                title: Text(vendor.name),
                contentPadding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on,size: 15,),
                          Text(vendor.address),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.phone,size: 15,),
                          Text(vendor.phoneNumber),
                        ],
                      ),
                    ],
                  ),
                ),
                leading: Icon(Icons.location_city),
                trailing: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(5),
                  color: Colors.deepOrangeAccent,
                  textColor: Colors.white,
                  onPressed: (){

                  },
                  minWidth: 90,
                  child: Text("Book"),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
                color: Colors.deepOrange,
              );
            },
            itemCount: item.length),
      ),
    );
  }
}
