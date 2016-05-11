# Write your own method that takes a block

def say_hello
	puts "Hello, how are you?"
	name1 = "Daniel"
	name2 = "Sean"
	name3 = "James"
	yield(name1, name2, name3)
end

say_hello { |name1, name2, name3| puts "How is your day, #{name3}?"}

# # Release 1: Use each, map and map!

# array and hash declaration
favorite_movies = ["The Avengers", "The Godfather", "Transformers", "Straight Outta Compton", "Star Wars: The Force Awakens"] 

avenger_abilities = {
	iron_man: "suit",
	thor: "hammer",
	hawk_eye: "bow and arrow",
	hulk: "rage smash",
	scarlett_witch: "magic",
	captain_america: "shield"
}

### .each method ###

# prints movie 
favorite_movies.each do |movie|
	puts movie
end

# upcase each movie
upcase_favorite_movies = []
favorite_movies.each do |movie|
	upcase_favorite_movies << movie.upcase
end
p upcase_favorite_movies

# prints message about each avenger
avenger_abilities.each do |avenger, ability|
	puts "#{avenger}'s ability is #{ability}!"
end

# Release 2

# 1 Delete items that meet a certain condition
scores = [ 97, 42, 75, 3143, 2, 51, 940, 31, 1, 22 ]
scores.delete_if {|score| score < 80 }   
p scores

h = { "a" => 100, 
	"b" => 200, 
	"c" => 300, 
	"d" => 400,
	"e" => 500
	}

h.delete_if {|key, value| key >= "c" }   
p h

# 2 Filters data structure that only satisfy certain condition
a = [1, 2, 3, 4, 5, 0]
new_array = a.drop_while {|i| i < 3 }   
p new_array

hash = { "c" => 300, 
	"a" => 100, 
	"d" => 400, 
	"c" => 300,  
	"d" => 400,
	"e" => 500
}

hash.keep_if {|key, value| key >= "c"}
p hash

# 3 different method that filters a data structure for only items satisfying a certain condition 
nested_array = [ [ 1, "one"], 
[2, "two"], 
[3, "three"], 
["ii", "two"] ]
p nested_array.rassoc("two")    
nested_array

hash3 = {
	  "colors"  => ["red", "blue", "green"],
     "letters" => ["a", "b", "c" ],
     "animals" => ["cat", "dog", "bear"]
 	}
p hash3.assoc("letters")  




# 4 Remove items from data structure until condition in the block evaluates to false, then stops.
numbers_array = [1, 2, 3, 4, 5, 0]
new_numbers_array = numbers_array.take_while { |i| i < 3 } 
p new_numbers_array


hash4 = { "a" => 100, "b" => 200, "c" => 300 }
hash4.reject! {|k,v| k < "b"}  
p hash4
