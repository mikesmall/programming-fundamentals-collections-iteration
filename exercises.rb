# EXERCISE 0
# Arrays
fave_colours_strings = ["red", "green", "blue"]
family_ages = [70, 61, 38, 36, 33]
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
puts family_ages.sort
# Add a new baby (0 years old) to the array of your family's ages.
family_ages << 0
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

# EXERCISE 3
# Print out the first two performing artists in that array.
puts fave_artists[1,2]
# For each of your favourite movies, print out a sentence about when the movie was released. For example:
#     Avatar came out in 2009.
#     Mean Girls came out in 2004.
#     The Matrix came out in 1999.
movies.each do |title,year|
  puts "#{title} came out in #{year}."
end
# Sort and reverse the array of ages of your family.
# Save it and print it to the screen.
# See if you can sort and reverse the array on one line!
family_ages = family_ages.sort
family_ages = family_ages.reverse
puts family_ages
# Add "Beauty and the Beast" movie to your hash of movies information,
# but with a twist:
# the movie was released both in 1991 and in 2017.
# Print it out.
movies[:"Beauty and the Beast"] = 1991,2017
puts movies
