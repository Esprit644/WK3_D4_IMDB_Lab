require('pg')
require_relative('../db/sql_runner.rb')
require_relative('casting.rb')
require_relative('star.rb')

class Movie

  attr_reader :title, :genre, :id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO movies
    (
      title,
      genre
    )
    VALUES
    (
      $1,$2
    )
    RETURNING id;"
    values = [@title, @genre]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM movies;"
    SqlRunner.run(sql)
  end

end
