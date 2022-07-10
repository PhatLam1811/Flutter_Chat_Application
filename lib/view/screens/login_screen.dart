import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utilities/constant_values.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textEditController = TextEditingController();
  final String _emailFormat = "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+";

  String? _emailError;

  void _validateEmail () {
    String input = _textEditController.value.text;

    if (input.trim().isEmpty) {
      setState(() {_emailError = "Can't be empty";});
    }
    else if (!RegExp(_emailFormat).hasMatch(input)) {
      setState(() {_emailError = "Invalid email";});
    }
    else {
      setState(() {_emailError = null;});
    }
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_validateEmail);
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _textEditController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background1,
      body: InkWell(
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// Title
                const SizedBox(height: 135.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: theme1,
                      fontSize: 30.0,
                    ),
                  ),
                ),

                /// Email or Phone Number
                const SizedBox(height: 60.0),
                TextField(
                  controller: _textEditController,
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    errorText: _emailError,
                    labelText: 'Email or Phone Number',
                    labelStyle: const TextStyle(fontSize: 15.0),
                    contentPadding: const EdgeInsets.all(5.0),
                    prefixIcon: const Icon(Icons.account_circle),
                  ),
                ),

                /// Password
                const SizedBox(height: 10.0),
                const TextField(
                  maxLines: 1,
                  obscureText: true,
                  textAlignVertical: TextAlignVertical(y: 0.5),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 15.0),
                    contentPadding: EdgeInsets.all(5.0),
                    prefixIcon: Icon(Icons.key),
                  ),
                ),

                /// Reset Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: text1,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      width: 80.0,
                      height: 30.0,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Reset Now!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),

                /// Sign In
                const SizedBox(height: 20.0),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: theme2,
                    primary: background1,
                    minimumSize: const Size.fromHeight(47.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'CONNECT!',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),

                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(thickness: 2.0),
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: text2,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(thickness: 2.0),
                      ),
                    ),
                  ],
                ),

                /// Register
                const SizedBox(height: 5.0),
                TextButton(
                  style: TextButton.styleFrom(
                    elevation: 1,
                    backgroundColor: theme3,
                    primary: background1,
                    minimumSize: const Size.fromHeight(47.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
