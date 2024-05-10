import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
 final String? name,avatar,message;
   Chats({super.key,required this.name,required this.avatar,required this.message});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
    final messages = TextEditingController();

    String? textMessage='';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // bottomNavigationBar: ,
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 40, 145, 44),
        title: Title(color: Colors.black,child: Text(widget.name!),),
       leading:
          
           CircleAvatar(
            backgroundImage: NetworkImage(widget.avatar!),
           ),
        
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.call)),
          IconButton(onPressed: (){},
           icon: Icon(Icons.more_vert))
        ],
      ),
      body: SafeArea(child: Column(
        children: [
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                width: 100,
                
                child: Text(widget.message!),
              ),
            ),
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Container(
                  width: 100,
                  
                  child: Text(textMessage!),
                ),
              ),
            ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messages,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            textMessage  =textMessage.toString()+"\n"+ messages.text;
                          });
                    }, 
                    icon: Icon(Icons.send)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    label: Text('Message')
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}