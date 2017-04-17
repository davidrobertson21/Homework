package card_game;

import card_game.*;
import java.util.*;

public class WinChecker {

  private ArrayList<Integer> scores = new ArrayList<Integer>();
  private ArrayList<Player> players = new ArrayList<Player>();

  public String winningCards(Player hand1, Player hand2){
    if(hand1.isPlayerBust() == true)
      return "Player 1 is Bust, Player 2 wins";
    if(hand2.isPlayerBust() == true)
      return "Player 2 is Bust, Player 1 wins";
    if(hand1.sumOfHand() > hand2.sumOfHand()){
      return "Player 1 Wins!";
    }
    return "Player 2 Wins";
  }

}