require('pg')
require_relative('../db/sql_runner')

class Artist

attr_reader :id, :name


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

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE artists SET (name) = ('#{@name}')
                            WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def all_albums_by_artist() #THIS RETURNS AN ARRAY
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    result = SqlRunner.run(sql)
    albums = result.map {|album| Album.new(album)}
    return albums
  end



  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end


  def self.all()
    sql = "SELECT * FROM artists"
    result = SqlRunner.run(sql)
    return result.map{|artists| Artist.new(artists)}
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id}"
    result = SqlRunner.run(sql)
    artist = Artist.new(result.first)
    return artist
  end

  #artist.find(2) would display the artist when entering in terminal

  def self.find_by_name(name)
    sql = "SELECT * FROM artists WHERE name = '#{name}'"
      result = SqlRunner.run(sql)
      artist = Artist.new(result.first)
      return artist
  end


end