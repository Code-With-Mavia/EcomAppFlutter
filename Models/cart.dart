
import 'package:eapp/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of shoes
  List<Shoe> shoeShop= [
    Shoe(name: 'Superstar',
        price: '90',
        imagepath: 'lib/images/2.png',
        discription: 'Another iconic Adidas classic, '
            'the Superstar is instantly recognizable with its signature shell-toe design. Originally a basketball shoe, '
            'its now a staple for everyday style. Its made with a leather upper and offers a comfortable, supportive fit'
    ),
    Shoe(name: 'Gazelle',
        price: '85',
        imagepath: 'lib/images/3.png',
        discription: 'The Gazelle is a low-top suede sneaker '
            'with a vintage vibe. It features the classic three stripes '
            'and a rubber outsole. Its a versatile shoe that can be dressed up or down,'
            ' making it a popular choice for casual wear'
    ),
    Shoe(name: 'Ultraboost Light',
        price: '190',
        imagepath: 'lib/images/4.png',
        discription: 'Known for its incredible comfort and energy return, the Ultraboost Light is a top choice for runners of all levels. '
            'It features a lightweight Prime knit upper for breathability and a Boost midsole for responsive cushioning'
    ),
    Shoe(name: 'Harden Vol. 7',
        price: '160',
        imagepath: 'lib/images/5.jpeg',
        discription: 'Designed for James Hardens signature style of play, '
            'this shoe offers exceptional traction, support, and responsiveness. '
            'It features a lightweight textile upper, '
            'Light strike cushioning, and a unique traction pattern for quick cuts and changes of direction'
    ),
  ];

  //items in cart
  List<Shoe> userCart =[
  ];
  //get list of shoes
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  //add item cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}