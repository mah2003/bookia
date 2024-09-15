class LoginModelParams {
  String? email;
   String? password;
   LoginModelParams({this.email,this.password});

   Map <String,dynamic> ToJson(){
     return ["email":email]
   }
}
