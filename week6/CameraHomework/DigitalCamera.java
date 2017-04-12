public class DigitalCamera implements Printable{

  private String model;
  private String feature;

  public DigitalCamera(String model, String feature){
    this.model = model;
    this.feature = feature;

public String printDetails(){
  return model + " " + feature;
}

}

}