import java.util.*;

public class Photographer{
  private 
  private ArrayList<Printable> cameras; 

  public Photographer(String name){
    this.name = name;
    this.cameras = new ArrayList<Printable>();
  }

   public void add(Printable printable){
     cameras.add(printable);
  }

  public int cameraCount(){
    return cameras.size();
  }

}