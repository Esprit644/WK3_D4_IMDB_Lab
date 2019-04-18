require('pry-byebug')
require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')


movie1 = Movie.new({'title' => 'Kelly Heroes', 'genre' => 'action'})
movie2 = Movie.new({'title' => 'Back to the Future', 'genre' => 'scifi'})
movie3 = Movie.new({'title' => 'Big', 'genre' => 'comedy'})
movie4 = Movie.new({'title' => 'Sully', 'genre' => 'action'})


star1 = Star.new({'first_name' => 'Clint', 'last_name' => 'Eastwood'})
star2 = Star.new({'first_name' => 'Michael', 'last_name' => 'Fox'})
star3 = Star.new({'first_name' => 'Tom', 'last_name' => 'Hanks'})

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '10'})
casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => '10_000'})
casting3 = Casting.new({'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => '30_000'})
casting4 = Casting.new({'movie_id' => movie4.id, 'star_id' => star3.id, 'fee' => '120_000'})





binding.pry
nil
