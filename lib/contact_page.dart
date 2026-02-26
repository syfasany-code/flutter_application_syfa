import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 132, 171),
        title: Text("Contact Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Jika ingin mengetahui lebih lanjut tentang aplikasi ini'
                'silakan hubungi:\n'
                'Nama: Yasyfa Hidayanti\n'
                'No HandPhone: 082240359569\n'
                'Instagram: ysyfhdyntii\n'
                'Tiktok: whosyayas\n'
                'Kelas: XI RPL 2\n'
                'Sekolah: SMK YPC Tasikmalaya\n'
                'Terima kasih telah mencoba aplikasi ini.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {Navigator.pop(context, '/about');},
                label: Text("Kembali Ke About", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.person_add, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 248, 107, 171)),
                 
              ),
              ),
      ],
     ),
    ) 
    ),
    );
  }
}