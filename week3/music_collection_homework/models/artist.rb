require('pg')
require_relative('../db/sql_runner')

class Artist

attr_accessor :name
attr_reader :id

  def initialize(options)
    @id = options ["id"].to_i
    @name = options ["name"] 
  end



  def save()
    sql = "INSERT INTO artists (name)
          VALUES ('#{@name}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result.first()["id"].to_i
  end


  def self.all()
    sql = "SELECT * FROM artists"
    result = SqlRunner.run(sql)
    return result.map{|artists| Artist.new(artists)}
  end


  def all_albums_by_artist()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    result = SqlRunner.run(sql)
    albums = result.map {|album| Album.new(album)}
    return albums
  end


end