class Member {
  // creating the class
  String image; // member image
  String name; // member name
  String about; // about member
  String phone; // member phone number
  String email; // member email

// register the values of the class
  Member({
    required this.image,
    required this.name,
    required this.about,
    required this.phone,
    required this.email,
  });
}

// create an instance of the class
var precious = Member(
  image: 'images/logo.png',
  name: 'Precious Odigie',
  about: 'i am precious',
  email: 'precius@example.com',
  phone: '+2345678901234',
);

// var nichole = Member(
//   image: 'images/liverDiagram.png',
//   name: 'Nichole Momoh',
//   about: 'i am nichole',
// );

// var solomon = Member(
//   image: 'images/img1.jpg',
//   name: 'Solomon Momoh',
//   about: 'i am solomon',
// );
