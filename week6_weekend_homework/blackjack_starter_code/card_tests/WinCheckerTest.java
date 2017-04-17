import card_game.*;

import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;

public class WinCheckerTest {

    WinChecker winChecker;

    Player player1;
    Player player2;

    Card card1;
    Card card2;
    Card card3;
    Card card4;
    Card card5;

    Game game;


    @Before
    public void before(){

      game = new Game();

      winChecker = new WinChecker();

      player1 = new Player("David");
      player2 = new Player("Dave");
      
      card1 = new Card(2, Suit.Hearts);
      card2 = new Card(5, Suit.Hearts);
      card3 = new Card(10, Suit.Clubs);
      card4 = new Card(13, Suit.Diamonds);
      card5 = new Card(6, Suit.Spades);

      game.addPlayer(player1);
      game.addPlayer(player2);

      player1.setHand(card1, card2);
      player2.setHand(card3, card4);
    }

    @Test
      public void playerHasName(){
        assertEquals("David", player1.getName());
        assertEquals("Dave", player2.getName());
      }

      @Test
      public void playerHasCards(){
        assertEquals("Two of Hearts, Five of Hearts", player1.printHand());
        assertEquals("Ten of Clubs, King of Diamonds", player2.printHand());
      }

      @Test
      public void testSumHand(){
        assertEquals(7, player1.sumOfHand());
        assertEquals(23, player2.sumOfHand());
      }

      @Test
      public void testWinningCards(){
        assertEquals("Player 2 is Bust, Player 1 wins", winChecker.winningCards(player1, player2));
      }

      @Test 
      public void testPlayerCount(){
        assertEquals(2, game.playerCount());
      }

      @Test
      public void testPlayerTwoIsBust(){
        assertEquals("Player 2 is Bust, Player 1 wins", winChecker.winningCards(player1, player2));
      }


}