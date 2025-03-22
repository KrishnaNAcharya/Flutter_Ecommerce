import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To avoid taking full height
            children: [
              const CircleAvatar(
                radius: 50,
              ),
              const SizedBox(height: 10),
              Text(
                "Krishna N Acharya",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                "kniggacharyas@gmail.com",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // Edit Profile
              ListTile(
                leading: const Icon(Icons.edit),
                trailing: const Icon(Icons.chevron_right),
                title: Text(
                  "Edit profile",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Update your username."),
              ),

              const Divider(thickness: 1, height: 1),

              // My Orders
              ListTile(
                leading: const Icon(Icons.shopping_bag),
                trailing: const Icon(Icons.chevron_right),
                title: Text(
                  "My orders",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Track your orders."),
              ),
              Divider(thickness: 1, height: 1),
              const SizedBox(height: 30),
              ElevatedButton(onPressed:(){}, child: Text("Sign out")),
            ],
          ),
        ),
      ),
    );
  }
}
