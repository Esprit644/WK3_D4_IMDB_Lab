require('pry-byebug')
require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()


movie1 = Movie.new({'title' => 'Kelly Heroes', 'genre' => 'action'})
movie1.save()
movie2 = Movie.new({'title' => 'Back to the Future', 'genre' => 'scifi'})
movie2.save()
movie3 = Movie.new({'title' => 'Big', 'genre' => 'comedy'})
movie3.save()
movie4 = Movie.new({'title' => 'Sully', 'genre' => 'action'})
movie4.save()


star1 = Star.new({'first_name' => 'Clint', 'last_name' => 'Eastwood'})
star1.save()
star2 = Star.new({'first_name' => 'Michael', 'last_name' => 'Fox'})
star2.save()
star3 = Star.new({'first_name' => 'Tom', 'last_name' => 'Hanks'})
star3.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '10'})
casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => '10_000'})
casting3 = Casting.new({'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => '30_000'})
casting4 = Casting.new({'movie_id' => movie4.id, 'star_id' => star3.id, 'fee' => '120_000'})
casting1.save()
casting2.save()
casting3.save()
casting4.save()





binding.pry
nil
