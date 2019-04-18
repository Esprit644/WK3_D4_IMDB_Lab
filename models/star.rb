require('pg')
require_relative('casting.rb')
require_relative('movie.rb')

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO stars
    (
      first_name,
      last_name
    )
    VALUES
    (
      $1,$2
    )
    RETURNING id;"
    values = [@first_name, @last_name]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end

  def update()
    sql = "UPDATE stars
    SET (first_name, last_name) = ($1,$2)
    WHERE id = $3;"
    values = [@first_name, @last_name, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM stars;"
    stars = SqlRunner.run(sql)
    result = Star.map_items(stars)
  end

  def self.delete_all()
    sql ="DELETE FROM stars;"
    SqlRunner.run(sql)
  end

  def self.map_items(star_data)
    results = star_data.map { |star| Star.new(star) }
    return results
  end


end
