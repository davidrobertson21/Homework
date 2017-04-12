import java.util.*;

public class Photographer{
  private String name; 
  private ArrayList<Printable> cameras; 

  public Photographer(String name){
    this.name = name;
    this.cameras = new ArrayList<Printable>();
  }


  public int cameraCount(){
    return cameras.size();
  }

  public void addCamera(Printable printable){
    cameras.add(printable);
  }

  public Printable removeCamera(){
    if (cameraCount() > 0) {
      return cameras.remove(0);
    }
    return null;
  }

}