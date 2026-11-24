import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppApp());
}

class WhatsAppApp extends StatelessWidget {
  const WhatsAppApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF075E54),
          foregroundColor: Colors.white,
          elevation: 1,
        ),
      ),
      home: const WhatsAppHomeScreen(),
    );
  }
}

class WhatsAppHomeScreen extends StatelessWidget {
  const WhatsAppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Icon(Icons.camera_alt, color: Colors.white70),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 3.0),
                    ),
                  ),
                  child: const Text(
                    'CHATS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'STATUS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'CALLS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => const Divider(
          indent: 80,
          endIndent: 16,
          height: 1,
          thickness: 0.5,
        ),
        itemBuilder: (context, index) {
          return const ChatTileItem();
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF25D366),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}

class ChatTileItem extends StatelessWidget {
  const ChatTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: const CircleAvatar(
        radius: 26,
        backgroundColor: Color(0xFF128C7E),
        child: Icon(Icons.person, color: Colors.white, size: 30),
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'سلمى حشيش',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            '10:30 AM',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 4.0),
        child: Row(
          children: [
            Icon(Icons.done_all, size: 18, color: Colors.blue),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                'ازيك عامله ايه؟',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}