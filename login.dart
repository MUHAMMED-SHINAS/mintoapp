import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:minto/splash.dart';
import 'package:minto/splashsec.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<FirebaseApp> _initializeFireBase() async{
    FirebaseApp firebaseapp = await Firebase.initializeApp();
    return firebaseapp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: FutureBuilder(
        future: _initializeFireBase(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return LoginScreen();
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static Future<User?> loginUsingEmailPassword(
  {required String email,
  required String password,
  required BuildContext context})async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
  }on FirebaseAuthException catch(e){
      print("invalid credential");
   }
   return user;
   }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailComntroller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Minto",style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text("Login To Your App",style: TextStyle(
            color: Colors.white54,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          TextField(
            controller: emailComntroller,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                color: Colors.white
              ),
              prefixIcon: Icon(Icons.mail,color: Colors.orange,),
            ),
          ),

          SizedBox(height: 20,),
          TextField(
            controller: passwordController,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Colors.white
              ),
              hintText: "Password",
              prefixIcon: Icon(Icons.security,color: Colors.orange,),
            ),
          ),
          SizedBox(height: 10,),

          Text("Dont Have an Account ?",style: TextStyle(color: Colors.orangeAccent),
          ),
          SizedBox(height: 88.0,),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Colors.grey,
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              onPressed: ()async{
                User? user = await loginUsingEmailPassword(
                    email: emailComntroller.text,
                    password: passwordController.text,
                    context: context);
                print(user);
                if(user != null)
                  {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=>SplashSec())
                    );
                  }
                else{
                  showAlertDialog(context);
                }
              },
              child: Text("Login",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 18.0,
              ),),
            ),
          )
        ],
      )
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
      LoginScreen();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Login Failed"),
    content: Text("Email OR Password is Invalid."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

