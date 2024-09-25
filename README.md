# LabMobile3_Fadhila-Galih-Maheswara_ShiftD

Nama        : Fadhila Galih Maheswara
Nim         : H1D022007
Shift Lama  : D  
Shift Baru  : D

# Tugas Pertemuan 3
1. Pendaftaran (registerpage.dart):
    Ketika pengguna mendaftar, nama mereka disimpan menggunakan SharedPreferences:
    dartCopyFuture<void> _register() async {
    if (_formKey.currentState!.validate()) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    // ... (data lain juga disimpan)

2. Login (loginpage.dart):
    Ketika pengguna berhasil login, mereka diarahkan ke HomePage:
    dartCopyif (_usernameController.text == savedUsername && _passwordController.text == savedPassword) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
    );
    }

3. HomePage (homepage.dart):
    HomePage adalah StatefulWidget yang memuat nama pengguna saat inisialisasi:
    dartCopyclass _HomePageState extends State<HomePage> {
    String? name;
    
    @override
    void initState() {
    super.initState();
    _loadName();
    }
    
    Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
    name = prefs.getString('name');
    });
    }

4. Kemudian, dalam method build, nama tersebut ditampilkan:
    dartCopyText(
    name ?? 'User',
    style: const TextStyle(fontSize: 20, color: Colors.white),
    ),

# Screenshot
<div style="display: flex; justify-content: space-between;">
  <img src="assets/Screenshot 2024-09-25 192730.png" width="19%" alt="Login Page">
  <img src="assets/Screenshot 2024-09-25 192906.png" width="19%" alt="Register Page">
  <img src="assets/Screenshot 2024-09-25 192926.png" width="19%" alt="Home Page">
  <img src="assets/Screenshot 2024-09-25 192932.png" width="19%" alt="About Page">
</div>
