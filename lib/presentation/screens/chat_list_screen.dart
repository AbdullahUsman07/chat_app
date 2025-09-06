import 'package:chat_app/presentation/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {

  final List<Map<String, dynamic>> chats = [
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Ethan Bennett",
      "message": "I'm on my way",
      "time": "9:45 AM",
      "unread": 2,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBdmkZcun9nfcXDUC07pmnpj-yBqx7-wyw2oma-yzDx0E4R_sg5syb-moaSdXfMozPvta5DUnLQilb7k37Dzv4NqtAlmkekzbYrsC8lcnqPP22r_NtXdOQdBYbSx1EuVKsIUixD3BB7zgq6jevYmCLdIe8t2cDcnJX90c7Ih9Rg1h_g_3T7D_Dmrde9RdVsyhanQOUX252QTD4_U7fdfJIIQCb9GzcIYRofE4idu0p48tMvzm6DEKmVaJoECV6o85D2U-XdB14zlJsp",
    },
    {
      "name": "Olivia Hayes",
      "message": "Let's meet at the usual spot",
      "time": "Yesterday",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBmvIsAohaaQzK0GWLaB82gdCCL2BkqGIniYkqPfNVOZSsEULTJXancmVGJSi3xzCEbsqSBO3dNPtNOd-d389h5-RpoDbfq-8_4pJqx6Xe0dQo7V1-n4HS_51pMnda8tlw_cxQ23m4fa1Jdx9tL0H78l8s5FPynZe7XYl4lpyWPNmIQFyrnBVl5PimDOCGPQfkvlCROwUkcUeaHnDJe1xNBcR-3P6yJSqKvnxzT7s8YW3_Mn-dbvm6WFsBA_dUP1Y4AnQY7O3GiJzj8",
    },
    {
      "name": "Noah Parker",
      "message": "I'll be there in 10",
      "time": "2 days ago",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCXgplG5W12bMkIVYtPUSS2HtjdIjfbBkcvvWa3ysyPChkGMNFc-djc0awdG3BzFnaZcedNeJaqN5KWf_N1l_EVc0sMtqB_kngUKjFK-xDPDAvP2cE_BNtAoSjGiOK0loDSlCReajIoq7Mm7iThddIz8ryWHB5K-AMUFO0V1y5s7GLMjRFY7kKAixj7H3WArdNd_17Eq1D7uSQy7PfqNcTS6IneXqhOKQ972-UonStkbZq3zLMhZjuH_UdK5GQ9rrtN8b8itKFhCQD2",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
    "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Ethan Bennett",
      "message": "I'm on my way",
      "time": "9:45 AM",
      "unread": 2,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBdmkZcun9nfcXDUC07pmnpj-yBqx7-wyw2oma-yzDx0E4R_sg5syb-moaSdXfMozPvta5DUnLQilb7k37Dzv4NqtAlmkekzbYrsC8lcnqPP22r_NtXdOQdBYbSx1EuVKsIUixD3BB7zgq6jevYmCLdIe8t2cDcnJX90c7Ih9Rg1h_g_3T7D_Dmrde9RdVsyhanQOUX252QTD4_U7fdfJIIQCb9GzcIYRofE4idu0p48tMvzm6DEKmVaJoECV6o85D2U-XdB14zlJsp",
    },
    {
      "name": "Olivia Hayes",
      "message": "Let's meet at the usual spot",
      "time": "Yesterday",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBmvIsAohaaQzK0GWLaB82gdCCL2BkqGIniYkqPfNVOZSsEULTJXancmVGJSi3xzCEbsqSBO3dNPtNOd-d389h5-RpoDbfq-8_4pJqx6Xe0dQo7V1-n4HS_51pMnda8tlw_cxQ23m4fa1Jdx9tL0H78l8s5FPynZe7XYl4lpyWPNmIQFyrnBVl5PimDOCGPQfkvlCROwUkcUeaHnDJe1xNBcR-3P6yJSqKvnxzT7s8YW3_Mn-dbvm6WFsBA_dUP1Y4AnQY7O3GiJzj8",
    },
    {
      "name": "Noah Parker",
      "message": "I'll be there in 10",
      "time": "2 days ago",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCXgplG5W12bMkIVYtPUSS2HtjdIjfbBkcvvWa3ysyPChkGMNFc-djc0awdG3BzFnaZcedNeJaqN5KWf_N1l_EVc0sMtqB_kngUKjFK-xDPDAvP2cE_BNtAoSjGiOK0loDSlCReajIoq7Mm7iThddIz8ryWHB5K-AMUFO0V1y5s7GLMjRFY7kKAixj7H3WArdNd_17Eq1D7uSQy7PfqNcTS6IneXqhOKQ972-UonStkbZq3zLMhZjuH_UdK5GQ9rrtN8b8itKFhCQD2",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {"name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Ethan Bennett",
      "message": "I'm on my way",
      "time": "9:45 AM",
      "unread": 2,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBdmkZcun9nfcXDUC07pmnpj-yBqx7-wyw2oma-yzDx0E4R_sg5syb-moaSdXfMozPvta5DUnLQilb7k37Dzv4NqtAlmkekzbYrsC8lcnqPP22r_NtXdOQdBYbSx1EuVKsIUixD3BB7zgq6jevYmCLdIe8t2cDcnJX90c7Ih9Rg1h_g_3T7D_Dmrde9RdVsyhanQOUX252QTD4_U7fdfJIIQCb9GzcIYRofE4idu0p48tMvzm6DEKmVaJoECV6o85D2U-XdB14zlJsp",
    },
    {
      "name": "Olivia Hayes",
      "message": "Let's meet at the usual spot",
      "time": "Yesterday",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBmvIsAohaaQzK0GWLaB82gdCCL2BkqGIniYkqPfNVOZSsEULTJXancmVGJSi3xzCEbsqSBO3dNPtNOd-d389h5-RpoDbfq-8_4pJqx6Xe0dQo7V1-n4HS_51pMnda8tlw_cxQ23m4fa1Jdx9tL0H78l8s5FPynZe7XYl4lpyWPNmIQFyrnBVl5PimDOCGPQfkvlCROwUkcUeaHnDJe1xNBcR-3P6yJSqKvnxzT7s8YW3_Mn-dbvm6WFsBA_dUP1Y4AnQY7O3GiJzj8",
    },
    {
      "name": "Noah Parker",
      "message": "I'll be there in 10",
      "time": "2 days ago",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuCXgplG5W12bMkIVYtPUSS2HtjdIjfbBkcvvWa3ysyPChkGMNFc-djc0awdG3BzFnaZcedNeJaqN5KWf_N1l_EVc0sMtqB_kngUKjFK-xDPDAvP2cE_BNtAoSjGiOK0loDSlCReajIoq7Mm7iThddIz8ryWHB5K-AMUFO0V1y5s7GLMjRFY7kKAixj7H3WArdNd_17Eq1D7uSQy7PfqNcTS6IneXqhOKQ972-UonStkbZq3zLMhZjuH_UdK5GQ9rrtN8b8itKFhCQD2",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
    {
      "name": "Sophia Carter",
      "message": "See you later!",
      "time": "10:30 AM",
      "unread": 0,
      "avatar":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAhTKzidBf1GiHjmHBTxgMTEdn7Eoc8vSR6XjXTQmQsrblSOKZ7dVKYjoQvr5zUdDe8Rx7tAUDZPEgJPRLwXnh00oAam3dUh1NMqXWielTwiLXgz3wSvckn4rLAZbA_znHT7AWvJoyTXHddoN4cLB-F4sNNKrALVJG7SzLe5H3hpr-EP2OLNPB6tKoXMucip_p44wdq_jskfXzHTazrl6SdwVsXhDQw0PKrB787Tofz_JO_m5M_AplTHMJMEVqBLxmtD2Hb-FJ9sh50",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),

      // Chat list
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(chat["avatar"]),
            ),
            title: Text(chat["name"], style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(
              chat["message"],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(chat["time"], style: const TextStyle(color: Colors.grey, fontSize: 12)),
                if (chat["unread"] > 0)
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFF38e07b),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chat["unread"].toString(),
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ChatScreen(chatName: chat["name"], avatarUrl: chat["avatar"])));
            },
          );
        },
      ),

      // Floating button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF38e07b),
        onPressed: () {
          // Add new chat logic later
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),

    );
  }
}
