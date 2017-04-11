import java.util.*;

public class Photographer{
  private ArrayList<Printable> cameras; 

  public Photographer(){
    this.cameras = new ArrayList<Printable>();
  }

   public void add(Printable printable){
     cameras.add(printable);
  }

}