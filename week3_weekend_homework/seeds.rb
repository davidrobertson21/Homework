require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )

require('pry')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({'name' => "David",
                          'funds' => 50})
customer2 = Customer.new({'name' => "Sean",
                          'funds' => 60})
customer3 = Customer.new({'name' => "Grant",
                          'funds' => 20})
customer4 = Customer.new({'name' => "Chris",
                          'funds' => 70})
customer5 = Customer.new({'name' => "Darren",
                          'funds' => 80})
customer6 = Customer.new({'name' => "Jay",
                          'funds' => 90})
customer7 = Customer.new({'name' => "Kano",
                          'funds' => 100})

customer1.save
customer2.save
customer3.save
customer4.save
customer5.save
customer6.save
customer7.save

film1 = Film.new({'title' => 'Apocalypse Now'})
film2 = Film.new({'title' => 'The Godfather'})
film3 = Film.new({'title' => 'Taxi Driver'})
film4 = Film.new({'title' => 'Amadeus'})
film5 = Film.new({'title' => 'Se7en'})
film6 = Film.new({'title' => 'Alien'})
film7 = Film.new({'title' => 'Blade Runner'})

film1.save
film2.save
film3.save
film4.save
film5.save
film6.save
film7.save

ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
ticket2 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer2.id})
ticket3 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer3.id})
ticket4 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer4.id})
ticket5 = Ticket.new({'film_id' => film5.id, 'customer_id' => customer5.id})
ticket6 = Ticket.new({'film_id' => film6.id, 'customer_id' => customer6.id})
ticket7 = Ticket.new({'film_id' => film7.id, 'customer_id' => customer7.id})

ticket1.save
ticket2.save
ticket3.save
ticket4.save
ticket5.save
ticket6.save
ticket7.save


binding.pry
nil