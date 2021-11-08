// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  final _keyForm = GlobalKey<FormState>();
  late String mail;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController message = TextEditingController();

  List<Map<String, String>> names = [
    {
      "name": "Nader Mohamed",
      "subTitle": "Mohamed send message",
      "image": "assets/images/person1.png",
      "age": "23",
      "time": "2.30 pm",
    },
    {
      "name": "Ahmed Mohamed",
      "subTitle": "Ali send Fav",
      "image": "assets/images/person2.png",
      "age": "23",
      "time": "9.30 pm",
    },
    {
      "name": "mahmoud Mohamed",
      "subTitle": "Nader send like",
      "image": "assets/images/person3.png",
      "age": "23",
      "time": "1.30 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person1.png",
      "age": "23",
      "time": "2.30 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person3.png",
      "age": "23",
      "time": "3.50 pm",
    },
    {
      "name": "Mohamed Mohamed",
      "subTitle": "Ahmed send ......",
      "image": "assets/images/person2.png",
      "age": "23",
      "time": "5.00 pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

        /// widget text
        title: const Text(
          "Course Flutter",
          style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        /// widget iconButton
        leading: IconButton(
            onPressed: () {
              print("welcome Nader Mohamed");
            },
            icon: Icon(Icons.notifications_none)),

        actions: [
          ///package svgPicture
          SvgPicture.asset(
            "assets/icons/like.svg",
            color: Color(0xffF55A00),
            width: 30,
            height: 30,
          ),

          ///widget SizeBox
          SizedBox(width: 10),

          ///widget image
          Image.asset(
            "assets/icons/facebook.png",
            width: 35,
            height: 35,
          ),
        ],
      ),

      body:

      ///CircleAvatar & TextFormField && form with column & padding & InkWell && Container (design 8)
      // Form(
      //   key: _keyForm,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //
      //       CircleAvatar(
      //         radius: 80,
      //         backgroundColor: Colors.black12,
      //         child: Padding(
      //           padding: const EdgeInsets.all(5.0),
      //           child: Container(
      //             decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/nad.png"),
      //               )
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //       SizedBox(height: 20),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextFormField(
      //           controller: email,
      //           keyboardType: TextInputType.emailAddress,
      //           validator: (value){
      //             if(value!.isEmpty){
      //               return "Enter Your mail";
      //             }
      //             return null;
      //           },
      //           onChanged: (value){
      //             print(value);
      //           },
      //           onSaved: (value){
      //             mail = value!;
      //           },
      //           decoration: InputDecoration(
      //             hintText: "Enter your mail",
      //             labelText: "Email",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //         ),
      //       ),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextFormField(
      //           controller: password,
      //           validator: (value){
      //             if(value!.length < 8){
      //               return "password less than 8 chara";
      //             }
      //             return null;
      //           },
      //           keyboardType: TextInputType.visiblePassword,
      //           obscureText: true,
      //           decoration: InputDecoration(
      //             hintText: "Enter your password",
      //             labelText: "Password",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //             prefixIcon: Icon(Icons.password),
      //             suffixIcon: Icon(Icons.remove_red_eye),
      //           ),
      //         ),
      //       ),
      //
      //       /// TextField
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextField(
      //           controller: message,
      //           keyboardType: TextInputType.visiblePassword,
      //           maxLines: 5,
      //           decoration: InputDecoration(
      //             hintText: "send your message (option)",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //
      //       SizedBox(height: 20),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: InkWell(
      //           onTap: (){
      //             print("email ==== ${email.text.toString()}");
      //             print("password ==== ${password.text.toString()}");
      //             print("message ==== ${message.text.toString()}");
      //
      //             _keyForm.currentState!.validate();
      //           },
      //           child: Container(
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.teal,
      //               borderRadius: BorderRadius.circular(20),
      //
      //             ),
      //             height: 50,
      //             child: Center(
      //               child: Text("Login",
      //                 style: TextStyle(
      //                     fontSize: 20,
      //                     fontFamily: "Cairo",
      //                     color: Colors.white
      //                 ),),
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),


      ///TextFormField && form with column & padding & InkWell && Container (design 7)
      // Form(
      //   key: _keyForm,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextFormField(
      //           controller: email,
      //           keyboardType: TextInputType.emailAddress,
      //           validator: (value){
      //             if(value!.isEmpty){
      //               return "Enter Your mail";
      //             }
      //             return null;
      //           },
      //           onChanged: (value){
      //             print(value);
      //           },
      //           onSaved: (value){
      //             mail = value!;
      //           },
      //           decoration: InputDecoration(
      //             hintText: "Enter your mail",
      //             labelText: "Email",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //         ),
      //       ),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextFormField(
      //           controller: password,
      //           validator: (value){
      //             if(value!.length < 8){
      //               return "password less than 8 chara";
      //             }
      //             return null;
      //           },
      //           keyboardType: TextInputType.visiblePassword,
      //           obscureText: true,
      //           decoration: InputDecoration(
      //             hintText: "Enter your password",
      //             labelText: "Password",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //             prefixIcon: Icon(Icons.password),
      //             suffixIcon: Icon(Icons.remove_red_eye),
      //           ),
      //         ),
      //       ),
      //
      //
      //
      //       /// TextField
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: TextField(
      //           controller: message,
      //           keyboardType: TextInputType.visiblePassword,
      //           maxLines: 5,
      //           decoration: InputDecoration(
      //             hintText: "send your message (option)",
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: BorderSide(width: 5,
      //                   color: Colors.green),
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //
      //
      //
      //       Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: InkWell(
      //           onTap: (){
      //             print("email ==== ${email.text.toString()}");
      //             print("password ==== ${password.text.toString()}");
      //             print("message ==== ${message.text.toString()}");
      //
      //             _keyForm.currentState!.validate();
      //           },
      //           child: Container(
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.teal,
      //               borderRadius: BorderRadius.circular(20),
      //
      //             ),
      //             height: 50,
      //             child: Center(
      //               child: Text("Login",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontFamily: "Cairo",
      //                 color: Colors.white
      //               ),),
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),


      ///TextField with && column & padding & InkWell && Container (design 6)
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextField(
      //         controller: email,
      //         keyboardType: TextInputType.emailAddress,
      //         onChanged: (value) {
      //           print(value);
      //         },
      //         decoration: InputDecoration(
      //           hintText: "enter your mail",
      //           labelText: "Email",
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(15),
      //             borderSide: BorderSide(width: 5, color: Colors.green),
      //           ),
      //           prefixIcon: Icon(Icons.email),
      //         ),
      //       ),
      //     ),
      //
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextField(
      //         controller: password,
      //         obscureText: true,
      //         keyboardType: TextInputType.visiblePassword,
      //         onChanged: (value) {
      //           print(value);
      //         },
      //         decoration: InputDecoration(
      //           hintText: "enter your Password",
      //           labelText: "Password",
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(15),
      //             borderSide: BorderSide(width: 5, color: Colors.green),
      //           ),
      //           prefixIcon: Icon(Icons.password_sharp),
      //           suffixIcon: Icon(Icons.remove_red_eye),
      //         ),
      //       ),
      //     ),
      //
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: InkWell(
      //         onTap: (){
      //           print("email ==== ${email.text.toString()}");
      //           print("password ==== ${password.text.toString()}");
      //         },
      //         child: Container(
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //             color: Colors.teal,
      //             borderRadius: BorderRadius.circular(20),
      //
      //           ),
      //           height: 50,
      //           child: Center(
      //             child: Text("Login",
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontFamily: "Cairo",
      //               color: Colors.white
      //             ),),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),


      /// ListView.builder with ListTile & image & CircleAvatar & Text (design 5)
      // ListView.builder(
      //   itemCount: names.length,
      //   scrollDirection: Axis.vertical,
      //  itemBuilder: (context,index){
      //     return Padding(
      //       padding: const EdgeInsets.fromLTRB(5,10,5,8),
      //       child: ListTile(
      //         title: Text("${names[index]["name"]}",style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 17,
      //             fontFamily: "Cairo",
      //             fontWeight: FontWeight.bold
      //         )),
      //         subtitle: Text("${names[index]["subTitle"]}",style: TextStyle(
      //             color: Colors.grey,
      //             fontSize: 14,
      //             fontFamily: "Cairo",
      //             fontWeight: FontWeight.bold
      //         )),
      //         leading: CircleAvatar(
      //           radius: 25,
      //           backgroundColor: Colors.black12,
      //           child: Image.asset(
      //             "${names[index]["image"]}",
      //             // width: 45,
      //             // height: 45,
      //           ),
      //         ),
      //         trailing: Text("${names[index]["time"]}",style: TextStyle(
      //             color: Colors.black54,
      //             fontSize: 14,
      //             fontFamily: "Cairo",
      //             fontWeight: FontWeight.bold
      //         )),
      //         onTap: (){
      //           print("Nader mohamed");
      //         },
      //       ),
      //     );
      //  },
      // ),

      /// ListTile with text & image (design 4)
      //   ListTile(
      //     title: Text("Nader Mohamed",style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 20,
      //             fontFamily: "Cairo",
      //             fontWeight: FontWeight.bold
      //         )),
      //     subtitle: Text("Nader Mohamed send message .......",style: TextStyle(
      //         color: Colors.grey,
      //         fontSize: 15,
      //         fontFamily: "Cairo",
      //         fontWeight: FontWeight.bold
      //     )),
      //     leading: Image.asset(
      //       "assets/icons/google.png",
      //       width: 35,
      //       height: 35,
      //     ),
      //     trailing: Text("2.30 PM",style: TextStyle(
      //         color: Colors.black54,
      //         fontSize: 16,
      //         fontFamily: "Cairo",
      //         fontWeight: FontWeight.bold
      //     )),
      //     onTap: (){
      //       print("Nader mohamed");
      //     },
      //   )

      /// GridView.extent with Card & image & container (design 3.4)
      // GridView.extent(
      //   scrollDirection: Axis.vertical,
      //   maxCrossAxisExtent: 200,
      //   children: [
      //     Card(
      //   color: Colors.yellow,
      //   elevation: 5,
      //   shadowColor: Colors.yellow,
      //   clipBehavior: Clip.hardEdge,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20),
      //       side: BorderSide(width: 5,color: Colors.green)
      //   ),
      //   child: Container(
      //     width: double.infinity,
      //     height: 100,
      //     child: Image.asset("assets/images/food.jpg",
      //       fit: BoxFit.fill,),
      //   ),
      // ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //       ),
      //     ),
      //   ],
      // ),

      /// GridView.custom with Card & image & container (design 3.3)
      // GridView.custom(
      //     scrollDirection: Axis.vertical,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //     childrenDelegate: SliverChildBuilderDelegate(
      //         (context,index){
      //           return Card(
      //             color: Colors.yellow,
      //             elevation: 5,
      //             shadowColor: Colors.yellow,
      //             clipBehavior: Clip.hardEdge,
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 side: BorderSide(width: 5,color: Colors.green)
      //             ),
      //             child: Container(
      //               width: double.infinity,
      //               height: 100,
      //               child: Image.asset("assets/images/food.jpg",
      //                 fit: BoxFit.fill,),
      //             ),
      //           );
      //         },
      //       childCount: 11,
      //     ),
      // ),

      /// GridView.count with Card & image & container (design 3.2)
      // GridView.count(
      //     scrollDirection: Axis.vertical,
      //     crossAxisCount: 3,
      //     children: [
      //       Card(
      //   color: Colors.yellow,
      //   elevation: 5,
      //   shadowColor: Colors.yellow,
      //   clipBehavior: Clip.hardEdge,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20),
      //       side: BorderSide(width: 5,color: Colors.green)
      //   ),
      //   child: Container(
      //     width: double.infinity,
      //     height: 100,
      //     child: Image.asset("assets/images/food.jpg",
      //       fit: BoxFit.fill,),
      //   ),
      // ),
      //       Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //         ),
      //       ),
      //       Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //         ),
      //       ),
      //       Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //         ),
      //       ),
      //       Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //         ),
      //       ),
      //   ],
      // ),

      /// GridView.builder with Card & image & container (design 3.1)
      // GridView.builder(
      //   itemCount: 7,
      //   scrollDirection: Axis.vertical,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   itemBuilder: (context,index){
      //     return Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     );
      //   },
      // ),

      /// GridView with Card & image & container (design 3)
      // GridView(
      //   scrollDirection: Axis.vertical,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   children: [
      //     Card(
      //   color: Colors.yellow,
      //   elevation: 5,
      //   shadowColor: Colors.yellow,
      //   clipBehavior: Clip.hardEdge,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20),
      //       side: BorderSide(width: 5,color: Colors.green)
      //   ),
      //   child: Container(
      //     width: double.infinity,
      //     height: 100,
      //     child: Image.asset("assets/images/food.jpg",
      //       fit: BoxFit.fill,),
      //
      //   ),
      // ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     ),
      //   ],
      // ),

      /// ListView.custom with Card & image & container (design 2.3)
      // ListView.custom(
      //   scrollDirection: Axis.vertical,
      //   childrenDelegate: SliverChildBuilderDelegate(
      //       (context,index){
      //         return Card(
      //           color: Colors.yellow,
      //           elevation: 5,
      //           shadowColor: Colors.yellow,
      //           clipBehavior: Clip.hardEdge,
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               side: BorderSide(width: 5,color: Colors.green)
      //           ),
      //           child: Container(
      //             width: double.infinity,
      //             height: 100,
      //             child: Image.asset("assets/images/food.jpg",
      //               fit: BoxFit.fill,),
      //
      //           ),
      //         );
      //       },
      //     childCount: 10,
      //   ),
      //
      // ),

      /// ListView.separated with Card & image & container (design 2.2)
      // ListView.separated(
      //   itemCount: 10,
      //   scrollDirection: Axis.vertical,
      //  itemBuilder: (context,index){
      //     return Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     );
      //  },
      //   separatorBuilder: (context,index) {
      //     return Container(
      //       height: 10,
      //       color: Colors.green,
      //     );
      //   },
      // ),

      /// ListView.builder with Card & image (design 2.1)
      // ListView.builder(
      //   itemCount: 10,
      //   scrollDirection: Axis.vertical,
      //  itemBuilder: (context,index){
      //     return Card(
      //       color: Colors.yellow,
      //       elevation: 5,
      //       shadowColor: Colors.yellow,
      //       clipBehavior: Clip.hardEdge,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //           side: BorderSide(width: 5,color: Colors.green)
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 100,
      //         child: Image.asset("assets/images/food.jpg",
      //           fit: BoxFit.fill,),
      //
      //       ),
      //     );
      //  },
      // ),

      /// ListView with InkWell &vCard & image (design 2)
      // ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //
      //
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //
      //
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         print("Nader Mohamed");
      //       },
      //       onLongPress: (){
      //         print("Ahmed Mohamed");
      //       },
      //       onDoubleTap: (){
      //         print("Ramadan Mohamed");
      //       },
      //       child: Card(
      //         color: Colors.yellow,
      //         elevation: 5,
      //         shadowColor: Colors.yellow,
      //         clipBehavior: Clip.hardEdge,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //             side: BorderSide(width: 5,color: Colors.green)
      //         ),
      //         child: Container(
      //           width: double.infinity,
      //           height: 100,
      //           child: Image.asset("assets/images/food.jpg",
      //             fit: BoxFit.fill,),
      //
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      /// InkWell with Card and image (design 1)
      InkWell(
        onTap: (){
          print("Nader Mohamed");
        },
        onLongPress: (){
          print("Ahmed Mohamed");
        },
        onDoubleTap: (){
          print("Ramadan Mohamed");
        },
        child: Card(
          color: Colors.yellow,
          elevation: 5,
          shadowColor: Colors.yellow,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(width: 5,color: Colors.green)
          ),
          child: Container(
            width: double.infinity,
            height: 100,
            child: Image.asset("assets/images/food.jpg",
              fit: BoxFit.fill,),

          ),
        ),
      ),
    );
  }
}
