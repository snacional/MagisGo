class UserModel {
  final String? id;
  final String fullname;
  final String email;
  final String mobilenumber;
  final String password;
  final String type;

  UserModel(
      {this.id,
      required this.fullname,
      required this.email,
      required this.mobilenumber,
      required this.password,
      required this.type});

      toJson(){
        return {
          "fullname": fullname,
          "email": email,
          "password": password,
          "type": type, 
          "mobilenumber": mobilenumber,
        };
      }
}
