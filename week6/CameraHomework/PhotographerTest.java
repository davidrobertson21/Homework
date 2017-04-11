import static org.junit.Assert.*;
import org.junit.*;

public class PhotographerTest{
  Camera camera;


  @Before 
  public void before() {
    camera = new Camera;
  }


  @Test
  public void cameraListStartsEmpty(){
    assertEquals(0, camera.cameraCount());
  }

  @Test
  public void canAddCamera(){
    bear.eat(salmon);
    assertEquals(1, bear.foodCount());
  }

}






