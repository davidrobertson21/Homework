require_relative("../db/sql_runner")

class Film

  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i
    @title = options["title"]
  end

  
  def save()
    sql = "INSERT INTO films (title) 
           VALUES ('#{ @title }') RETURNING id"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end

  def update()
    sql = "UPDATE films SET (title) = ('#{@title}')
                            WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM films WHERE id = #{@id}"
    SqlRunner.run(sql)
  end
  

  def self.show_all()
    sql = "SELECT * FROM films"
    return Film.map_items(sql)
  end

  def self.delete_all() 
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end


  #MAP METHOD
    def self.map_items(sql)
      films = SqlRunner.run(sql)
      result = films.map {|film| Film.new(film)}
      return result
    end


end