import 'package:flutter/material.dart';
import 'package:list/Folder/Button_styles/app_button_style.dart';
import 'package:list/main_screen/main_sreen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Login to your account",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: ListView(
        children: const [Header()],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
          height: 25,
          ),
          const FormAuthWidget(),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'In order to use rhe editing ..... in here wil be your advertisement like bla bla bla'
            ' bla bla bla bla bla bla bla bla '
            'bla bla bla bla bla bla bla bla. Click here to add your ad',
            style: styleText,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: const Text("Register")),
          const SizedBox(
            height: 25,
          ),
          const Text(
              'In here will be your second ad like bel bel  bel bel  bel bel  bel bel'
              ' bel bel  bel bel  bel bel',
              style: styleText),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: const Text("be your")),

        ],
      ),
    );
  }
}

class FormAuthWidget extends StatefulWidget {
  const FormAuthWidget({super.key});

  @override
  State<FormAuthWidget> createState() => _FormAuthWidgetState();
}

class _FormAuthWidgetState extends State<FormAuthWidget> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  String? ErrorText;

  void _auth() {
    final login = _loginController.text;
    final password = _passwordController.text;
    if (login == 'admin' && password == 'admin') {
      ErrorText = null;
      Navigator.of(context).pushNamed("/main_screen");
    } else {
      ErrorText = "Error";
      return print("show error");
    }
    setState(() {});
  }

  void _resetPassword() {
    print("reset Password");
  }

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(fontSize: 16, color: Color(0xFF212529));
    const decorForTextField = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff01b4e4))));
    final ErrorText = this.ErrorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (ErrorText != null)...[
          Text(
            "$ErrorText",
            style: const TextStyle(color: Colors.redAccent, fontSize: 17),
          )
        ],
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Username",
          style: styleText,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginController,
          decoration: InputDecoration(

          ),

        ),
        const Text(
          "Password",
          style: styleText,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: decorForTextField,
          obscureText: true,
          controller: _passwordController,
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            TextButton(
                style:  ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  textStyle: const MaterialStatePropertyAll(
                      TextStyle(fontSize: 16,fontWeight: FontWeight.w700,)
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff01b4e4)),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 15.0,vertical: 8.0)),
                ),
                onPressed: (){
                  setState(() {
                    _auth();
                  });
                },
                child: const Text('Login')),
            const SizedBox(width: 30),
            TextButton(
                onPressed: _resetPassword,
                style: AppButtonStyle.linkButton,
                child: const Text(
                  'Reset password',
                )),
          ],
        )
      ],
    );
  }
}
