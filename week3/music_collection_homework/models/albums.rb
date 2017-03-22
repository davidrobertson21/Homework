require('pg')

class Album

attr_accessor :topping, :quantity
attr_reader :id, :customer_id

  def initialize(options)
    @id = options ["id"].to_i
    @topping = options ["topping"]
    @quantity = options ["quantity"].to_i
    @customer_id = options['customer_id'].to_i
  end
