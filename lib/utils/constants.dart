
import 'package:amazon/screen/home_page.dart';
import 'package:flutter/material.dart';

 



final RegExp EMAIL_VALIDATION_REGEX = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

final RegExp PASSWORD_VALIDATION_REGEX = RegExp(r'.*'); // Matches any input

   

final RegExp NAME_VALIDATION_REGEX = RegExp(r"\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+");

final String PLACEHOLDER_PFP =
    "https://t3.ftcdn.net/jpg/05/16/27/58/360_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg";

const double kAppBarHeight = 110;

const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];
const List<Widget> screens = [
          HomePage(),
           Center(
              child: Text("Search Screen"),
            ),
           Center(
              child: Text("Cart Screen"),
            ),
           Center(
              child: Text("Menu Screen"),
            ),
          

];


const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

// List<Widget> testChildren = [
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   ),
//   SimpleProductWidget(
//     productModel: ProductModel(
//         url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
//         productName: "Rick Astley",
//         cost: 9999999999999,
//         discount: 0,
//         uid: "eioejfbkn",
//         sellerName: "Rick Seller",
//         sellerUid: "983498ihjb",
//         rating: 1,
//         noOfRating: 1),
//   )
// ];

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];