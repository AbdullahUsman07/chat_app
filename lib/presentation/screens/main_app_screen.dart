
import 'package:chat_app/presentation/screens/chat_list_screen.dart';
import 'package:flutter/material.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _currentIndex = 0; // default to Settings

  final List<Widget> _screens = [
    const ChatListScreen(),
    const Center(child: Text("Calls")),
    const Center(child: Text("Contacts")),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        selectedItemColor: const Color(0xFF38e07b),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            activeIcon: Icon(Icons.call),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_outlined),
            activeIcon: Icon(Icons.contacts),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

// ================= Settings Screen ==================

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  String name = "Olivia Davis";
  String about = "Designer & Dreamer";

  // Helper to show editable dialog
  Future<void> _editField({
    required String title,
    required String currentValue,
    required Function(String) onSave,
  }) async {
    final controller = TextEditingController(text: currentValue);

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Edit $title"),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Enter $title",
            border: const OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Cancel
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF38e07b),
            ),
            onPressed: () {
              onSave(controller.text.trim());
              Navigator.pop(context);
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 56,
                  backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/aida-public/AB6AXuClo1hVJ4-CvHhR4ZYQcUb31tQDGDaVI1dtxUlq6ppPMM98homlNdd5c-Q-TrhZmgvLIdEsYSB5PdJik63rkDpZE3fWD-UdtiKi52_CedhI_pX8xkK9wJvxqrvQpxbjOdo23GCEwz6MKShht4i8ojeiO0x2tNbfDMKD4yUJG4V62w2dtWnUeaLddme2gyX57l1ZN1RAZDpaXDgjHiZ7b8Qo6faEh7oTo4iH5u-i2-e0KsUQK0xlyqa2gr6_e_l8XBS2H_DFVX-pFdZR",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color(0xFF38e07b),
                    child: const Icon(Icons.edit, color: Colors.white, size: 18),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Name field
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text("Name", style: TextStyle(fontSize: 12, color: Colors.grey)),
            subtitle: Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: IconButton(
              icon: const Icon(Icons.edit, color: Colors.grey),
              onPressed: () {
                _editField(
                  title: "Name",
                  currentValue: name,
                  onSave: (newValue) {
                    if (newValue.isNotEmpty) {
                      setState(() => name = newValue);
                    }
                  },
                );
              },
            ),
          ),
          const Divider(),

          // About field
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text("About", style: TextStyle(fontSize: 12, color: Colors.grey)),
            subtitle: Text(about, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: IconButton(
              icon: const Icon(Icons.edit, color: Colors.grey),
              onPressed: () {
                _editField(
                  title: "About",
                  currentValue: about,
                  onSave: (newValue) {
                    if (newValue.isNotEmpty) {
                      setState(() => about = newValue);
                    }
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 24),

          // Preferences
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text("Dark Mode"),
                  secondary: const Icon(Icons.dark_mode, color: Colors.grey),
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() => isDarkMode = value);
                  },
                  activeColor: const Color(0xFF38e07b),
                ),
                ListTile(
                  leading: const Icon(Icons.notifications, color: Colors.grey),
                  title: const Text("Notifications"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.lock, color: Colors.grey),
                  title: const Text("Privacy"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.storage, color: Colors.grey),
                  title: const Text("Data and Storage"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Logout
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

