require('pry-byebug')
require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')


movie1 = Movie.new({'title' => 'Kelly Heroes', 'genre' => 'action'})
movie2 = Movie.new({'title' => 'Back to the Future', 'genre' => 'scifi'})
movie3 = Movie.new({'title' => 'Big', 'genre' => 'comedy'})

star1 = Star.new({'first_name' => 'Clint', 'last_name' => 'Eastwood'})
star2 = Star.new({'first_name' => 'Michael', 'last_name' => 'Fox'})
star3 = Star.new({'first_name' => 'Tom', 'last_name' => 'Hanks'})






binding.pry
nil
