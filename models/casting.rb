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



end
