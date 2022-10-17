import 'package:app_delivery/src/login/login_controller.dart';
import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _login_pageState();
}

class _login_pageState extends State<LoginPage> {

  LoginController _con = new LoginController();

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    print('INIT STATE ');

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) { 
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Metodo Build');
    return Scaffold(

      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -80,
                left: -100,
                child: _circlelogin()
            ),
            Positioned(
                child: _textLogin(),
                top: 60, left: 25,
            ),
            SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //_imageBanner(),
                  _lottieAnimation(),
                  _textFieldEmail(),
                  _textFieldPassword(),
                  _buttonLogin(),
                  _textNoAccount(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _textLogin(){
    return  Text(
    'LOGIN',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }

  Widget _textNoAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes una cuenta?',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColors.prymaryColor
          ),
        ),

        SizedBox(width: 10),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors.prymaryColorDArk
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
          onPressed: _con.login,
          child: const Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
          primary: Colors.black38,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.passwordController,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.prymaryColorDArk
            ),
            prefixIcon: Icon(
                Icons.lock,
                color: Colors.black12
            )
        ),
      ),
    );
  }
  Widget _textFieldEmail(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.prymaryOpacityColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        controller: _con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electronico',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.prymaryColorDArk
          ),
          prefixIcon: Icon(
              Icons.email,
              color: Colors.black12
          )
        ),
      ),
    );
  }

  Widget _circlelogin(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black
      ),
    );
  }

  Widget _lottieAnimation(){
    return Container(
      margin: EdgeInsets.only(
          top:200,
          bottom: MediaQuery.of(context).size.height * 0.10
      ),
      child: Lottie.asset(
          'assets/json/delivery.json',
        width: 330,
        height: 200,
        fit: BoxFit.fill
      ),
    );
  }

  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(
          top:120,
          bottom: MediaQuery.of(context).size.height * 0.2
      ),
      child: Image.asset('assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Holaaa'),
          Text('nono'),
          //SizedBox(width: 30),
          Text('Hello'),
        ],
      ),*/
      //body: Text('Hola mundo'),
      /*body: Column(
        children: [
          SizedBox(height:20),
          Text('Este es el texto uno'),
          SizedBox(height:20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Descripción',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){} ,
              child: Text('Continuar'),
          )
        ],
      ),*/

