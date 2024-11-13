class UserDetailModel {
  final String name;
  final String address;
  UserDetailModel({required this.name,required this.address});
  Map<String, dynamic> getJson()=>{
    'name':name,
    'address': address
  };
}