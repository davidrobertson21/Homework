import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BusTest{
  Bus bus;
  Person passenger;

  @Before 
  public void before() {
    bus = new Bus("Ocean Terminal");
    passenger = new Person();
  }

  @Test
  public void hasName(){
    assertEquals("Ocean Terminal", bus.getRoute()); 
  }


@Test
  public void busStartsEmpty(){
    assertEquals(0, bus.countPassengers());
  }


@Test
  public void canAddPassengers(){
    this.bus.add(this.passenger);
    assertEquals(1, bus.countPassengers());
  }

@Test
public void cannotAddPassengerWhenBusIsFull(){
  for(int i = 0; i < 10; i++){
    this.bus.add(passenger);
  }
  assertEquals(5, this.bus.countPassengers());
}

@Test
public void busIsFull(){
  for(int i = 0; i < 5; i++){
    this.bus.add(this.passenger);
  }
assertEquals(true, this.bus.isBusFull());
}



}
