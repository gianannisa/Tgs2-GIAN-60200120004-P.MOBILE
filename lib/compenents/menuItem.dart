import 'package:coffe_shop/model/coffee.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final int index;

  MenuItem({required this.index});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Row (children: <Widget> [
            AspectRatio(aspectRatio: 1 /1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                menu[index].image,
                fit: BoxFit.cover,
              ),
            ),
            ),
            SizedBox(width: 20,),
            AspectRatio(aspectRatio: 4/3, 
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(menu[index].name, style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                ),
                ),
                Text(menu[index].shortDesc, style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 141, 190, 150), fontWeight: FontWeight.w300
                ),),
                SizedBox(height: 20,
                ),
                Text(
                  "Rp. " + menu[index].price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            ),
            IconButton(
              onPressed: (){},
                icon: Icon(
                  Icons.add_circle,
                  color: Color.fromARGB(255, 62, 34, 3),
                  size: 36,
                ),
            )
          ],
          ),
        ),
         ),
);
  }
}
