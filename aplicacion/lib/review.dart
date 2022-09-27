import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Reviews'),
            backgroundColor: Colors.black
        ),
        body: ListView(
          padding: EdgeInsets.all(25),
          children: const [
            Text('Reviews\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,), textAlign: TextAlign.center,),
            // Review 1
            Text('Enrique', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque semper vulputate ornare. Suspendisse lectus turpis, auctor eu urna at, venenatis posuere nulla. Phasellus aliquam molestie tortor,%\n\n', style: TextStyle(fontSize: 15, ), textAlign: TextAlign.justify),
            // Review 2
            Text('Marco', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque semper vulputate ornare. Suspendisse lectus turpis, auctor eu urna at, venenatis posuere nulla. Phasellus aliquam molestie tortor,\n\n', style: TextStyle(fontSize: 15, ), textAlign: TextAlign.justify),
            // Review 3
            Text('Juan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque semper vulputate ornare. Suspendisse lectus turpis, auctor eu urna at, venenatis posuere nulla. Phasellus aliquam molestie tortor,\n\n', style: TextStyle(fontSize: 15, ), textAlign: TextAlign.justify),
            // Review 4
            Text('Pablo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,), textAlign: TextAlign.center),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque semper vulputate ornare. Suspendisse lectus turpis, auctor eu urna at, venenatis posuere nulla. Phasellus aliquam molestie tortor,\n', style: TextStyle(fontSize: 15, ), textAlign: TextAlign.justify),
          ]),
      );
}

// class Reviews extends StatefulWidget {
//   @override
//   _TestMeState createState() => _TestMeState();
// }

// class _TestMeState extends State<Reviews> {
//   final formKey = GlobalKey<FormState>();
//   final TextEditingController commentController = TextEditingController();
//   List filedata = [
//     {
//       'name': 'Adeleye Ayodeji',
//       'pic': 'https://picsum.photos/300/30',
//       'message': 'I love to code'
//     },
//     {
//       'name': 'Biggi Man',
//       'pic': 'https://picsum.photos/300/30',
//       'message': 'Very cool'
//     },
//     {
//       'name': 'Biggi Man',
//       'pic': 'https://picsum.photos/300/30',
//       'message': 'Very cool'
//     },
//     {
//       'name': 'Biggi Man',
//       'pic': 'https://picsum.photos/300/30',
//       'message': 'Very cool'
//     },
//   ];

//   Widget commentChild(data) {
//     return ListView(
//       children: [
//         for (var i = 0; i < data.length; i++)
//           Padding(
//             padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
//             child: ListTile(
//               leading: GestureDetector(
//                 onTap: () async {
//                   // Display the image in large form.
//                   print("Comment Clicked");
//                 },
//                 child: Container(
//                   height: 50.0,
//                   width: 50.0,
//                   decoration: new BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: new BorderRadius.all(Radius.circular(50))),
//                   child: CircleAvatar(
//                       radius: 50,
//                       backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
//                 ),
//               ),
//               title: Text(
//                 data[i]['name'],
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text(data[i]['message']),
//             ),
//           )
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Comment Page"),
//         backgroundColor: Colors.pink,
//       ),
//       body: Container(
//         child: CommentBox(
//           userImage:
//               "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
//           child: commentChild(filedata),
//           labelText: 'Write a comment...',
//           withBorder: false,
//           errorText: 'Comment cannot be blank',
//           sendButtonMethod: () {
//             if (formKey.currentState!.validate()) {
//               print(commentController.text);
//               setState(() {
//                 var value = {
//                   'name': 'New User',
//                   'pic':
//                       'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
//                   'message': commentController.text
//                 };
//                 filedata.insert(0, value);
//               });
//               commentController.clear();
//               FocusScope.of(context).unfocus();
//             } else {
//               print("Not validated");
//             }
//           },
//           formKey: formKey,
//           commentController: commentController,
//           backgroundColor: Colors.black,
//           textColor: Colors.white,
//           sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }