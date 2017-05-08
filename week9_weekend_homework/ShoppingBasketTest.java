import static org.junit.Assert.*;
import org.junit.*;

public class ShoppingBasketTest{
ShoppingBasket shoppingBasket

  @Before 
  public void before() {
      shoppingBasket = new ShoppingBasket();
      bread = new Bread();
      milk = new Milk();
    }

    @Test
    public void basketStartsEmpty(){
      assertEquals(0, shoppingBasket.basketSize());
    }

    @Test
    public void canEatBread(){
      shoppingBasket.addToBasket(bread);
      assertEquals(1, shoppingBasket.basketSize());
    }
    
    @Test
    public void canEatMilk(){
      shoppingBasket.addToBasket(milk);
      assertEquals(1, shoppingBasket.basketSize());
    }

    @Test
    public void canRemoveMilk(){
      shoppingBasket.addToBasket(milk);
      shoppingBasket.removeFromBasket(milk);
      assertEquals(0, shoppingBasket.basketSize());
    }

    @Test
    public void clearBasket(){
    shoppingBasket.addToBasket(milk);
    shoppingBasket.removeFromBasket(milk);
    assertEquals(2, shoppingBasket.basketSize());
    shoppingBasket.clearBasket();
    assertEquals(0, shoppingBasket.basketSize());
    }

    @Test
    public void totalCostINBasket(){
      shoppingBasket.addToBasket(bread);
      shoppingBasket.addToBasket(milk);
      assertEquals(50, shoppingBasket.totalPrice());
    }
  }


}