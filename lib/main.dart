import 'package:flutter/material.dart';
import 'package:messenger_view/chatpage.dart';

void main(List<String> args) {
runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 254, 254, 254))),
      home: Home(),
     
    );
  }
}

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<Map<String, dynamic>> details=[
    {
      'title':'Gaury',
      'subtitle':'Hii Gaury',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzsJfXak0k2JUrlvECJGCLvf7k9bTS0VfkrZUMNXSibA&s',
      'trailing':'11.21 AM'
    },
     {
      'title':'Ramsee',
      'subtitle':'Hii Ramsee',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxNwPd2yvMrFk1jk5u9D0xoQcIqHpnMq5kPeHA9F8tig&s',
      'trailing':'12.00 AM'
    },
    {
      'title':'Gaya3',
      'subtitle':'Hii Gaya3',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp7Pa817ghcxZn7B5bovDkcOmcvFyC9fI4neAyYG4-HA&s',
      'trailing':'12.05 PM'
    },
     {
      'title':'Hari',
      'subtitle':'Hii Harii',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtYr_hFI6Or4y5mMy-mjQoIzODx3ekSIbi98FO0YMf8A&s',
      'trailing':'12.30 PM'
    },{
      'title':'Nazriya',
      'subtitle':'Hii Nazriya',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh-Mhb5hmvGHNK0IHI0bK368zVfavSUrF3aQ961asWfg&s',
      'trailing':'12.40 PM'
    },
    {
      'title':'Neethu',
      'subtitle':'Hii Neethu',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHrYLrpw1d4Mcjr2yxdGZ07oajaRv_AhJl3XolRSd1eg&s',
      'trailing':'12.40 PM'
    },
     {
      'title':'Gaury',
      'subtitle':'Hii Gaury',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzsJfXak0k2JUrlvECJGCLvf7k9bTS0VfkrZUMNXSibA&s',
      'trailing':'11.21 AM'
    },
     {
      'title':'Ramsee',
      'subtitle':'Hii Ramsee',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxNwPd2yvMrFk1jk5u9D0xoQcIqHpnMq5kPeHA9F8tig&s',
      'trailing':'12.00 AM'
    },
    {
      'title':'Gaya3',
      'subtitle':'Hii Gaya3',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp7Pa817ghcxZn7B5bovDkcOmcvFyC9fI4neAyYG4-HA&s',
      'trailing':'12.05 PM'
    },
     {
      'title':'Hari',
      'subtitle':'Hii Harii',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtYr_hFI6Or4y5mMy-mjQoIzODx3ekSIbi98FO0YMf8A&s',
      'trailing':'12.30 PM'
    },{
      'title':'Nazriya',
      'subtitle':'Hii Nazriya',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh-Mhb5hmvGHNK0IHI0bK368zVfavSUrF3aQ961asWfg&s',
      'trailing':'12.40 PM'
    },
    {
      'title':'Neethu',
      'subtitle':'Hii Neethu',
      'leading':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHrYLrpw1d4Mcjr2yxdGZ07oajaRv_AhJl3XolRSd1eg&s',
      'trailing':'12.40 PM'
    },



  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 145, 44),
        title: Title(color: Colors.black, child: Text('Messenger View')),
        actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.search)),
           IconButton(onPressed: (){}, 
           icon: Icon(Icons.camera_alt_rounded)),
           IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert))
        ],
        ),
         body: SafeArea(
        child: ListView.separated(
        
          itemBuilder: (context,index){
           return ListTile(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Chats(
                name:details[index]['title'],
                message: details[index]['subtitle'],
                avatar:details[index]['leading'],
              )));
            },
            title:Text(details[index]['title']) ,
            subtitle:Text(details[index]['subtitle']),
            trailing: Text(details[index]['trailing']),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage:NetworkImage(details[index]['leading']),
            ),
           );
          }, 
          separatorBuilder:(context,index){
            return Divider(thickness: 2);
            },
           itemCount: details.length)),
    );
  }
}