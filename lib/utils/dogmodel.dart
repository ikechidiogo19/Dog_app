import 'package:dog_app/utils/color.dart';
import 'package:flutter/cupertino.dart';

class Dogmodel {
  String name;
  Color dogcolor;
  String dogimg;
  bool isfavoured;
  String location;
  String age;
  String weight;
  String sex;
  String about;

  Dogmodel(
      {required this.dogcolor,
      required this.age,
      required this.about,
      required this.location,
      required this.sex,
      required this.weight,
      required this.dogimg,
      required this.isfavoured,
      required this.name});
}

List<Dogmodel> mydogs = [
  Dogmodel(
    dogimg: 'Asset/luca.png',
    isfavoured: false,
    dogcolor: lucacolor,
    name: "luca",
    age: "4 Months",
    sex: "Female",
    weight: "4KG",
    location: "No. 5  Lekki face 5, Lagos Nigeria",
    about: "Luca is a human friendly dog. and very smart and easy to train."
        'he loves playing hide and seek. and his favorite food is chips with meatball.'
        "this dog breed can live in any weather climate.",
  ),
  Dogmodel(
      age: "5 Months",
      weight: "6KG",
      sex: "male",
      location: "No.3 Ekwueme street, New heaven Enugu state",
      about: "Dave is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is Milk with meatball.'
          "this dog breed can live in any weather climate.",
      dogimg: 'Asset/Dave.png',
      isfavoured: false,
      dogcolor: davecolor,
      name: "Dave"),
  Dogmodel(
      age: "4 Months",
      weight: "3KG",
      sex: "Male",
      location: "No. 10 lekki face 5, Lagos Nigeria",
      dogimg: 'Asset/Leo.png',
      isfavoured: false,
      dogcolor: leocolor,
      name: "Leo",
      about: "Leo is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is pasta with meatball.'
          "this dog breed can live in any weather climate."),
  Dogmodel(
      age: "3 Months",
      weight: "2KG",
      sex: "female",
      location: "No. 75 awkunanaw street, achara layout Enugu",
      about: "Ruby is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is egg with meatball.'
          "this dog breed can live in any weather climate.",
      dogimg: 'Asset/Ruby.png',
      isfavoured: false,
      dogcolor: rubycolor,
      name: "Ruby"),
  Dogmodel(
    dogimg: 'Asset/luca.png',
    isfavoured: false,
    dogcolor: lucacolor,
    name: "luca",
    age: "4 Months",
    sex: "Female",
    weight: "4KG",
    location: "No. 5  Lekki face 5, Lagos Nigeria",
    about: "Luca is a human friendly dog. and very smart and easy to train."
        'he loves playing hide and seek. and his favorite food is chips with meatball.'
        "this dog breed can live in any weather climate.",
  ),
  Dogmodel(
      age: "5 Months",
      weight: "6KG",
      sex: "male",
      location: "No.3 Ekwueme street, New heaven Enugu state",
      about: "Dave is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is Milk with meatball.'
          "this dog breed can live in any weather climate.",
      dogimg: 'Asset/Dave.png',
      isfavoured: false,
      dogcolor: davecolor,
      name: "Dave"),
  Dogmodel(
      age: "4 Months",
      weight: "3KG",
      sex: "Male",
      location: "No. 10 lekki face 5, Lagos Nigeria",
      dogimg: 'Asset/Leo.png',
      isfavoured: false,
      dogcolor: leocolor,
      name: "Leo",
      about: "Leo is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is pasta with meatball.'
          "this dog breed can live in any weather climate."),
  Dogmodel(
      age: "3 Months",
      weight: "2KG",
      sex: "female",
      location: "No. 75 awkunanaw street, achara layout Enugu",
      about: "Ruby is a human friendly dog. and very smart and easy to train."
          'he loves playing hide and seek. and his favorite food is egg with meatball.'
          "this dog breed can live in any weather climate.",
      dogimg: 'Asset/Ruby.png',
      isfavoured: false,
      dogcolor: rubycolor,
      name: "Ruby"),
];
