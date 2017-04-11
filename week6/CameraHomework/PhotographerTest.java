import static org.junit.Assert.*;
import org.junit.*;

public class PhotographerTest{
  DigitalCamera digitalCamera;
  AnalogCamera analogCamera;

  @Before 
  public void before(){
    photographer = new Photographer("David");
    digitalCamera = new DigitalCamera();
    analogCamera = new AnalogCamera();

  }


  @Test
  public void cameraListStartsEmpty(){
    assertEquals(0, photographer.cameraCount());
  

}





