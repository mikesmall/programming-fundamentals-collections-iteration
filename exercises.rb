# EXERCISE 0
# Arrays
fave_colours_strings = ["red", "green", "blue"]
brothers_ages = [36, 33]
coin_flips = ["heads", "heads", "tails", "tails", "tails"]
fave_artists = ["Spinal Tap", "Anvil", "Orion"]
fave_colours_symbols = [:red, :green, :blue]
# Hashes
words = {
  :paper => "flattened skinny wood pulp",
  :candy => "popular edible sugar",
  :porch => "a place for sitting"
}
movies = {
  :Jaws => 1975,
  :Rocky => 1976,
  :UHF => 1989
}
cities = {
  :Toronto => 2731571,
  :Halifax => 403131,
  :Calgary => 1214839
}
brothers = {
  :Scott => 33,
  :Shaun => 36
}

# EXERCISE 1
# Print out the array of coin flips.
puts coin_flips
# Print out the first element of the array of your favourite colours.
puts fave_colours_strings[1] #task 2
# Output the sorted version of the array of your friends and family members' ages.
puts brothers_ages.sort
# Add a new baby (0 years old) to the array of your family's ages.
brothers_ages << 0
# Using the hash of movie information, access and print the year of one of the movies.
puts movies[:Jaws]

# EXERCISE 2
# Print out the last element of the array of your favourite colours.
#     Note: this should work for an array of any size!
puts fave_colours_strings[-1]
# Add a new city to the hash of cities and population.
cities[:Schreiber] = 500
puts cities
# Reverse the array of coin flips and save it.
coin_flips = coin_flips.reverse
puts coin_flips
# Print out the population of one of the cities.
puts "The population of Toronto is #{cities[:Toronto]}."
# Print out a sentence about each item in the array of performing artists. For example:
#     I think Pearl Jam is great.
#     I think Lady Gaga is great.
#     I think Pink Floyd is great.
fave_artists.each do |artist|
  puts "I think #{artist} had a fun documentary!"
end
