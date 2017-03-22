require('pg')
require_relative('../db/sql_runner')

class Album

attr_accessor :title, :genre
attr_reader :id, :artist_id

  def initialize(options)
    @id = options ["id"].to_i
    @title = options ["title"]
    @genre = options ["genre"]
    @artist_id = options['artist_id'].to_i
  end


  def save()
    sql = "INSERT INTO albums (title,
                               genre,
                               artist_id)
          VALUES ('#{@title}',
                  #{@genre},
                  #{@artist_id}) RETURNING *;"
     result = SqlRunner.run(sql)
     @id = result.first["id"].to_i
  end


  def self.all()
    sql = "SELECT * FROM albums"
    result = SqlRunner.run(sql)
    return result.map{|album| Album.new(album)}
  end


  def what_artists_album()
    sql = "SELECT * FROM albums WHERE artist_id = #{@artist_id}"
    result = SqlRunner.run(sql).first
    return Artist.new(result)
  end

end
