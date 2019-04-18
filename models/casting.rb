require('pg')
require_relative('star.rb')
require_relative('movie.rb')

class Casting

  attr_reader :movie_id, :star_id, :id
  attr_accessor :fee

  def initialize(options)
    @movie_id = options['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee'].to_i
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO castings
    (
      fee,
      movie_id,
      star_id
    )
    VALUES
    (
      $1,$2,$3
    )
    RETURNING id;"
    values = [@fee, @movie_id, @star_id]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end

  def delete()
    sql = "DELETE FROM castings
    WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end


  def self.all()
    sql = "SELECT * FROM castings;"
    castings = SqlRunner.run(sql)
    result = Casting.map_items(castings)
  end

  def self.delete_all()
    sql = "DELETE FROM castings;"
    SqlRunner.run(sql)
  end

  def self.map_items(casting_data)
    results = casting_data.map { |casting| Casting.new(casting) }
    return results
  end


end
