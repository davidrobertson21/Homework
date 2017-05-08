import java.util.*;


public class ShoppingBasket {

  private ArrayList<Food> shoppingBasket;
}

public ShoppingBasket(){
  this.shoppingBasket = new ArrayList<Food>();
}

public int basketSize(){
  return shoppingBasket.size();
}

 public void addToBasket(Food food){
   shoppingBasket.add(food);
}

 public void removeFromBasket(Food food){
   shoppingBasket.remove(food);
}

 public void clearBasket(){
   shoppingBasket.clear();
}


public int totalPrice(){
 int sum = 0;
  for(Food food : this.shoppingBasket){
    if(food != null){
      sum += food.price();
    }
  }
  return sum;  
  }