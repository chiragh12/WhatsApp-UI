import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton:  Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
            ),

              child: const Icon(
            Icons.message,
                color: Colors.white,
          )),
          appBar: AppBar(
            actions: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.camera_alt_rounded),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text('New Broadcast'),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text('Linked Devices'),
                        ),
                        const PopupMenuItem(
                          value: 4,
                          child: Text('Settings'),
                        ),
                      ]),
            ],
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.groups_sharp),
              ),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ]),
          ),
          body: TabBarView(
            children: [
              const Text('Groups'),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Shahzad Arif'),
                    subtitle: Text('Hello Dear!'),
                    trailing: Text('3:41 PM'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  );
                },
              ),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ListTile(
                              title: Text('My Status'),
                              subtitle: Text('Tap to add status update'),
                              leading: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Recent Updates',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.green,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                ),
                              ),
                              subtitle: const Text('38 minutes ago'),
                              title: const Text('Osam ullah'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.green,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                        ),
                        subtitle: const Text('38 minutes ago'),
                        title: const Text('Osam ullah'),
                      );
                    }
                  }),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text('Shahzad Arif'),
                    subtitle: const Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          color: Colors.green,
                        ),
                        Text('21 minutes ago'),
                      ],
                    ),
                    trailing: Icon(index / 2 == 0
                        ? Icons.phone
                        : Icons.video_call_outlined),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
