import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -80,
                left: -100,
                child: _circleRegister()
            ),
            Positioned(
              child: _textRegister(),
              top: 70,
              left: 25,
            ),
            Positioned(
              child: _iconBack(),
              top: 58,
              left: -5,
            ),
            Container(
              width: double.infinity,
               margin: EdgeInsets.only(top:200),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _imageUsed(),
                    SizedBox(height: 30),
                    _textFieldEmail(),
                    _textFieldName(),
                    _textFieldLastName(),
                    _textFieldPhone(),
                    _textFieldPassword(),
                    _textFieldConfirmPassword(),
                    _buttonRegister()
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }

  Widget _textFieldPhone(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.prymaryColorDArk
            ),
            prefixIcon: Icon(
                Icons.phone,
                color: Colors.black12
            )
        ),
      ),
    );
  }

  Widget _textFieldConfirmPassword(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Confirmar contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.prymaryColorDArk
            ),
            prefixIcon: Icon(
                Icons.lock_open_outlined,
                color: Colors.black12
            )
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
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

  Widget _textFieldLastName(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Apellido',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.prymaryColorDArk
            ),
            prefixIcon: Icon(
                Icons.person_outline,
                color: Colors.black12
            )
        ),
      ),
    );
  }

  Widget _imageUsed(){
  return CircleAvatar(
    backgroundImage: AssetImage('assets/img/user_profile_2.png'),
    radius: 40,
    backgroundColor: Colors.grey[200],
  );
  }

  Widget _circleRegister(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.prymaryColorDArk
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

  Widget _textFieldName(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.prymaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Nombre',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.prymaryColorDArk
            ),
            prefixIcon: Icon(
                Icons.person,
                color: Colors.black12
            )
        ),
      ),
    );
  }

  Widget _textRegister(){
    return  Text(
      'REGISTRO',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20),
    );
  }

  Widget _iconBack(){
    return IconButton(onPressed: (){},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white)
    );
  }

  Widget _buttonRegister(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 120, vertical: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('REGISTRARSE'),
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

}
