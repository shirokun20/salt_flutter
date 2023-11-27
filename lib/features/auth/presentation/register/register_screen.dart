import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:salt_test/features/auth/presentation/register/register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _content(context),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            _welocomeWidget(),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Silahkan register untuk bisa akses aplikasi ini",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF597393)),
              ),
            ),
            _image(context),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: _input(
                        padding: 0,
                        label: "Nama Depan",
                        hintText: "Nama depan.."),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _input(
                        padding: 0,
                        label: "Nama Belakang",
                        hintText: "Nama belakang.."),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _input(
                padding: 20,
                label: "No. KTP",
                hintText: "Masukkan No. KTP anda"),
            const SizedBox(
              height: 30,
            ),
            _input(
                padding: 20, label: "Email", hintText: "Masukkan email anda"),
            const SizedBox(
              height: 30,
            ),
            _input(
                padding: 20,
                label: "No. Telpon",
                hintText: "Masukkan No. Telepon anda"),
            const SizedBox(
              height: 30,
            ),
            _password(),
            const SizedBox(
              height: 30,
            ),
            _password(label: "Konfirmasi Password", hintText: "Konfirmasi password anda"),
            const SizedBox(
              height: 65,
            ),
            _button(),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sudah punya akun ?",
                  style: TextStyle(
                    color: Color(0xFFBEBEBE),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: const Text(
                        "Login sekarang",
                        style: TextStyle(
                          color: Color(0xFF002060),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.copyright,
                  size: 16,
                  color: Color(0xFFBEBEBE),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'SILK. all right reserved.',
                  style: TextStyle(
                    color: Color(0xFFBEBEBE),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF002060),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x3D1D334F),
              blurRadius: 24,
              offset: Offset(0, 16),
              spreadRadius: 0,
            )
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: const SizedBox(
              width: double.infinity,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    bottom: 0,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _image(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 280,
      width: width,
      child: Stack(
        children: [
          Positioned(
            right: -70,
            top: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/login_image_2.png",
              width: width,
              height: 280,
            ),
          )
        ],
      ),
    );
  }

  Widget _input({
    double padding = 20,
    String label = "",
    String hintText = "",
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF002060)),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x28BEBEBE),
                  blurRadius: 24,
                  offset: Offset(0, 16),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,
              style: const TextStyle(
                color: Color(0xFF002060),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                suffixIconConstraints: const BoxConstraints(minHeight: 0),
                hintText: hintText,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _password(
      {String label = "Password", String hintText = "Masukkan password anda"}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF002060)),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x28BEBEBE),
                  blurRadius: 24,
                  offset: Offset(0, 16),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                color: Color(0xFF002060),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              obscureText: true,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                hintText: hintText,
                suffixIconConstraints: const BoxConstraints(minHeight: 0),
                suffixIcon: SizedBox(
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/images/eye.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _welocomeWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            "Hai, ",
            style: TextStyle(
                color: Color(0xFF1D334F),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Selamat Datang",
            style: TextStyle(
                color: Color(0xFF1D334F),
                fontSize: 28,
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
