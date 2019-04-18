require('pg')
require_relative('casting.rb')
require_relative('star.rb')

class Movie

  attr_reader :title, :genre, :id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'] if options['id']
  end


end
