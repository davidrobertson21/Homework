public class Bus{
  private String busRoute;
  private Person[] passenger;


  public Bus(String busRoute){
    this.busRoute = busRoute;
    this.passenger = new Person[5];
  }
  public String getRoute(){
    return this.busRoute;
  }


  public int countPassengers(){
    int count = 0;
    for(Person passenger : this.passenger){
      if(passenger != null){
        count++;
      }
    }
    return count;
  }

  public void add(Person passenger){
    if(isBusFull()){
      return;
    }
      int countPassenger = countPassengers();
      this.passenger[countPassenger] = passenger;
    
   }

  public boolean isBusFull(){
    return countPassengers() == passenger.length;

  }


}
