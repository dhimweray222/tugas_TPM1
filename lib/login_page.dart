import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoImageAssets(),

            const Padding(padding: EdgeInsets.only(top: 100.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                hintText: "Email",
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(900, 50) // put the width and height you want
              ),
              child: Text("LOG IN"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 2.0),
            ),
            TextButton(onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                child: const Text("Forgot Password?"))
          ],
        ),
      ),
    );
  }
}

class LogoImageAssets extends StatelessWidget {
  const LogoImageAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/images/logo.png');

    Image image = Image(image: assetImage, height: 50, width: 50);
    return Container(
      child: image,
    );
  }
}